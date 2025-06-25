import logging
import os
import os.path
import pathlib
import shutil
import subprocess
import sys
from argparse import ArgumentParser

logger = logging.getLogger("installer")

MIN_REQUIRED_PYTHON_MAJOR_VERSION = 3
MIN_REQUIRED_PYTHON_MINOR_VERSION = 6
MIN_REQUIRED_PYTHON_MINOR_VERSION_MACOS = 8

numbatsdk_path = None
exact_version = None


def main():
    global numbatsdk_path
    global exact_version

    parser = ArgumentParser()
    parser.add_argument("--modify-path", dest="modify_path", action="store_true", help="whether to modify $PATH (in profile file)")
    parser.add_argument("--no-modify-path", dest="modify_path", action="store_false", help="whether to modify $PATH (in profile file)")
    parser.add_argument("--numbatsdk-path", default=get_numbat_sdk_path_default(), help="where to install numbat-sdk")
    parser.add_argument("--exact-version", help="the exact version of drtpy to install")
    parser.set_defaults(modify_path=True)
    args = parser.parse_args()

    numbatsdk_path = os.path.expanduser(args.numbatsdk_path)
    modify_path = args.modify_path
    exact_version = args.exact_version

    logging.basicConfig(level=logging.DEBUG)

    operating_system = get_operating_system()
    python_major_version = sys.version_info.major
    python_minor_version = sys.version_info.minor

    logger.info("Checking user.")
    if os.getuid() == 0:
        raise Exception("You should not install drtpy as root.")

    logger.info("Checking Python version.")
    logger.info(f"Python version: {sys.version_info}")
    if python_major_version < MIN_REQUIRED_PYTHON_MAJOR_VERSION or (python_major_version >= MIN_REQUIRED_PYTHON_MAJOR_VERSION and python_minor_version < MIN_REQUIRED_PYTHON_MINOR_VERSION):
        raise Exception("You need Python 3.6 or later.")
    if operating_system == "osx":
        if python_minor_version < MIN_REQUIRED_PYTHON_MINOR_VERSION_MACOS:
            raise Exception("On MacOS, you need Python 3.8 or later.")

    logger.info("Checking operating system.")
    logger.info(f"Operating system: {operating_system}")
    if operating_system != "linux" and operating_system != "osx":
        raise Exception("Your operating system is not supported yet.")

    remove_installation()
    create_venv()
    install_drtpy()
    if modify_path:
        add_sdk_to_path()
        logger.info("""
###############################################################################
Upon restarting the user session, [$ drtpy] command should be available in your shell.
Furthermore, after restarting the user session, you can use [$ source drtpy-activate] to activate the Python virtual environment containing drtpy.
###############################################################################
""")


def get_operating_system():
    aliases = {
        "linux": "linux",
        "linux1": "linux",
        "linux2": "linux",
        "darwin": "osx",
        "win32": "windows",
        "cygwin": "windows",
        "msys": "windows"
    }

    operating_system = aliases.get(sys.platform)
    if operating_system is None:
        raise Exception(f"Unknown platform: {sys.platform}")

    return operating_system


def remove_installation():
    folder = get_drtpy_path()
    if os.path.isdir(folder):
        shutil.rmtree(folder)
        logger.info("Removed previous installation (virtual environment).")


def create_venv():
    require_venv()
    folder = get_drtpy_path()
    ensure_folder(folder)

    logger.info(f"Creating virtual environment in: {folder}.")
    import venv
    builder = venv.EnvBuilder(with_pip=True)
    builder.clear_directory(folder)
    builder.create(folder)

    # Create symlink to "bin/activate"
    link_path = os.path.join(numbatsdk_path, "drtpy-activate")
    if os.path.exists(link_path):
        os.remove(link_path)
    os.symlink(os.path.join(folder, "bin", "activate"), link_path)
    logger.info(f"Virtual environment has been created in: {folder}.")


def require_venv():
    operating_system = get_operating_system()

    try:
        import ensurepip
        import venv
        logger.info(f"Packages found: {ensurepip}, {venv}.")
    except ModuleNotFoundError:
        if operating_system == "linux":
            logger.info("Package [venv] or [ensurepip] not found, will be installed.")
            logger.info("Running [$ sudo apt-get install python3-venv]:")
            return_code = os.system("sudo apt-get install python3-venv")
            if return_code == 0:
                logger.info("Done installing [python3-venv].")
            else:
                raise Exception("Packages [venv] or [ensurepip] not installed correctly.")
        else:
            raise Exception("Packages [venv] or [ensurepip] not found, please install them first. See https://docs.python.org/3/tutorial/venv.html.")


def get_drtpy_path():
    return os.path.join(numbatsdk_path, "drtpy-venv")


def get_numbat_sdk_path_default():
    return os.path.expanduser("~/numbatsdk")


def ensure_folder(folder):
    pathlib.Path(folder).mkdir(parents=True, exist_ok=True)


def install_drtpy():
    logger.info("Installing drtpy in virtual environment...")
    erpy_versioned = "drtpy" if not exact_version else f"drtpy=={exact_version}"
    return_code = run_in_venv(["pip", "install", "--no-cache-dir", erpy_versioned])
    if return_code != 0:
        raise Exception("Could not install drtpy.")
    return_code = run_in_venv(["drtpy", "--version"])
    if return_code != 0:
        raise Exception("Could not install drtpy.")

    # Create symlink to "bin/drtpy"
    link_path = os.path.join(numbatsdk_path, "drtpy")
    if os.path.exists(link_path):
        os.remove(link_path)
    os.symlink(os.path.join(get_drtpy_path(), "bin", "drtpy"), link_path)
    logger.info("You have successfully installed drtpy.")


def run_in_venv(args):
    if "PYTHONHOME" in os.environ:
        del os.environ["PYTHONHOME"]

    process = subprocess.Popen(args, env={
        "PATH": os.path.join(get_drtpy_path(), "bin"),
        "VIRTUAL_ENV": get_drtpy_path()
    })

    return process.wait()


def add_sdk_to_path():
    logger.info("Checking PATH variable.")
    PATH = os.environ["PATH"]
    if numbatsdk_path in PATH:
        logger.info(f"numbat-sdk path ({numbatsdk_path}) already in $PATH variable.")
        return

    profile_file = get_profile_file()
    logger.info(f"Adding numbat-sdk path [{numbatsdk_path}] to $PATH variable.")
    logger.info(f"[{profile_file}] will be modified.")

    with open(profile_file, "a") as file:
        file.write(f'\nexport PATH="{numbatsdk_path}:$PATH"\t# numbat-sdk\n')

    logger.info(f"""
###############################################################################
[{profile_file}] has been modified.
Please RESTART THE USER SESSION.
###############################################################################
""")


def get_profile_file():
    operating_system = get_operating_system()
    file = None

    if operating_system == "linux":
        file = "~/.profile"
    else:
        value = input("""Please choose your preferred shell:
1) zsh
2) bash
""")
        if value not in ["1", "2"]:
            raise Exception("Invalid choice.")

        value = int(value)
        if value == 1:
            file = "~/.zshrc"
        else:
            file = "~/.bash_profile"

    return os.path.expanduser(file)


if __name__ == "__main__":
    try:
        main()
    except Exception as err:
        logger.fatal(err)
        sys.exit(1)

    logger.info("""

For more information go to https://docs.numbat.com.
For support, please contact us at https://t.me/NumbatDevelopers.
""")
