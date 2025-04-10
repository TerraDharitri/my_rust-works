use crate::CargoTomlContents;
use std::{
    fs::{self, DirEntry},
    path::{Path, PathBuf},
};
use toml::Value;

use super::version_req::VersionReq;

/// Used for retrieving crate versions.
pub const FRAMEWORK_CRATE_NAMES: &[&str] = &[
    "dharitri-sc",
    "dharitri-sc-meta",
    "dharitri-sc-scenario",
    "dharitri-sc-wasm-adapter",
    "dharitri-sc-modules",
    "numbat-wasm",
    "numbat-wasm-debug",
    "numbat-wasm-modules",
    "numbat-wasm-node",
    "numbat-interact-snippets",
];

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum DirectoryType {
    Contract,
    Lib,
}

#[derive(Debug, Clone)]
pub struct RelevantDirectory {
    pub path: PathBuf,
    pub version: VersionReq,
    pub dir_type: DirectoryType,
}

pub struct RelevantDirectories(Vec<RelevantDirectory>);

impl RelevantDirectories {
    pub fn find_all(path: impl AsRef<Path>) -> Self {
        let canonicalized = fs::canonicalize(path).expect("error canonicalizing input path");
        let mut dirs = Vec::new();
        populate_directories(canonicalized.as_path(), &mut dirs);
        RelevantDirectories(dirs)
    }

    pub fn len(&self) -> usize {
        self.0.len()
    }

    pub fn is_empty(&self) -> bool {
        self.0.is_empty()
    }

    #[allow(dead_code)]
    pub fn iter(&self) -> impl Iterator<Item = &RelevantDirectory> {
        self.0.iter()
    }

    pub fn iter_contract_crates(&self) -> impl Iterator<Item = &RelevantDirectory> {
        self.0
            .iter()
            .filter(|dir| dir.dir_type == DirectoryType::Contract)
    }

    pub fn count_for_version(&self, version: &str) -> usize {
        self.0
            .iter()
            .filter(|dir| dir.version.semver == version)
            .count()
    }

    pub fn iter_version(
        &mut self,
        version: &'static str,
    ) -> impl Iterator<Item = &RelevantDirectory> {
        self.0
            .iter()
            .filter(move |dir| dir.version.semver == version)
    }

    /// Operates no changes on the disk. Only changes this structure in memory.
    pub fn update_versions_in_memory(&mut self, from_version: &str, to_version: &str) {
        for dir in self.0.iter_mut() {
            if dir.version.semver == from_version {
                dir.version.semver = to_version.to_string();
            }
        }
    }
}

fn populate_directories(path: &Path, result: &mut Vec<RelevantDirectory>) {
    let is_contract = is_marked_contract_crate_dir(path);

    if !is_contract && path.is_dir() {
        let read_dir = fs::read_dir(path).expect("error reading directory");
        for child_result in read_dir {
            let child = child_result.unwrap();
            if can_continue_recursion(&child) {
                populate_directories(child.path().as_path(), result);
            }
        }
    }

    if let Some(version) = find_framework_version(path) {
        let dir_type = if is_contract {
            DirectoryType::Contract
        } else {
            DirectoryType::Lib
        };
        result.push(RelevantDirectory {
            path: path.to_owned(),
            version,
            dir_type,
        });
    }
}

fn is_marked_contract_crate_dir(path: &Path) -> bool {
    path.join("dharitri.json").is_file() || path.join("numbat.json").is_file()
}

fn can_continue_recursion(dir_entry: &DirEntry) -> bool {
    if !dir_entry.file_type().unwrap().is_dir() {
        return false;
    }

    if let Some(dir_name_str) = dir_entry.file_name().to_str() {
        // do not explore hidden folders
        !dir_name_str.starts_with('.')
    } else {
        false
    }
}

fn find_framework_version_string(cargo_toml_contents: &CargoTomlContents) -> Option<String> {
    for &crate_name in FRAMEWORK_CRATE_NAMES {
        if let Some(old_base) = cargo_toml_contents.dependency(crate_name) {
            if let Some(Value::String(s)) = old_base.get("version") {
                return Some(s.clone());
            }
        }
    }

    None
}

fn find_framework_version(dir_path: &Path) -> Option<VersionReq> {
    let cargo_toml_path = dir_path.join("Cargo.toml");
    if cargo_toml_path.is_file() {
        let cargo_toml_contents = CargoTomlContents::load_from_file(cargo_toml_path);
        if let Some(version) = find_framework_version_string(&cargo_toml_contents) {
            return Some(VersionReq::from_string(version));
        }
    }

    None
}
