import init, {
	build_schema,
	decode_value,
	get_default_json_for_type,
	list_contract_abi_types,
	load_abi,
} from "drt-human-codec-wasm";

export interface HumanCodecOptions {}

export class HumanCodec {
	private abiJson: string | undefined;
	private cachedTypes: string[] | undefined;
	private cachedDefaults: Map<string, string> = new Map();
	private cachedSchemas: Map<string, string> = new Map();

	private constructor(private options: HumanCodecOptions) {}

	public static async init(options: HumanCodecOptions = {}): Promise<HumanCodec> {
		await init();
		return new HumanCodec(options);
	}

	private reset() {
		this.cachedTypes = undefined;
		this.cachedDefaults = new Map();
		this.cachedSchemas = new Map();
	}

	public loadAbi(json: string) {
		try {
			console.time("loadAbi");
			load_abi(json);
			this.abiJson = json;
			this.reset();
		} finally {
			console.timeEnd("loadAbi");
		}
	}

	public get types(): string[] {
		try {
			console.time("types");
			if (!this.cachedTypes) {
				if (!this.abiJson) throw new Error("no abi provided");

				this.cachedTypes = list_contract_abi_types(this.abiJson);
			}

			return this.cachedTypes!;
		} finally {
			console.timeEnd("types");
		}
	}

	public getDefaultForType(typeName: string): string {
		try {
			console.time("getDefaultForType " + typeName);
			if (!this.cachedDefaults.get(typeName)) {
				if (!this.abiJson) throw new Error("no abi provided");

				const rawDefault = get_default_json_for_type(this.abiJson, typeName);
				const defaultJson = JSON.stringify(JSON.parse(rawDefault), null, 4);

				this.cachedDefaults.set(typeName, defaultJson);
			}
			return this.cachedDefaults.get(typeName)!;
		} finally {
			console.timeEnd("getDefaultForType " + typeName);
		}
	}

	public getSchemaForType(typeName: string): string {
		try {
			console.time("getSchemaForType " + typeName);
			if (!this.cachedSchemas.get(typeName)) {
				if (!this.abiJson) throw new Error("no abi provided");

				const rawSchema = build_schema(this.abiJson, typeName);
				const schemaJson = JSON.stringify(JSON.parse(rawSchema), null, 4);

				this.cachedSchemas.set(typeName, schemaJson);
			}
			return this.cachedSchemas.get(typeName)!;
		} finally {
			console.timeEnd("getSchemaForType " + typeName);
		}
	}

	public decodeValueOfType(typeName: string, value: string): string {
		try {
			console.time("decodeValueOfType " + typeName);
			if (!this.abiJson) throw new Error("no abi provided");

			return decode_value(this.abiJson, value, typeName);
		} finally {
			console.timeEnd("decodeValueOfType " + typeName);
		}
	}
}
