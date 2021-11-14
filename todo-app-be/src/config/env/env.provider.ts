import { envValidate } from './env.validator';

export const configModuleSetup = {
  cache: true,
  isGlobal: true,
  envFilePath: '.env',
  validationSchema: envValidate,
};
