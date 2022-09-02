import type { Config } from "../config";
import { buildContract } from "./buildContract";
import { buildTypes } from "./buildTypes";
import * as fs from 'fs';

export const buildContracts = async (config: Config) => {
    for (const { path } of config.contracts) {
        await buildContract(path);
    }
    // await buildTypes(config);
    // types are already generated
}