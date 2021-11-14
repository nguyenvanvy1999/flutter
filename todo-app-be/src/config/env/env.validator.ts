import joi from 'joi';
import { CEnvironments } from './constants';

export const envValidate = joi
  .object({
    // set env and config
    NODE_ENV: joi
      .string()
      .valid(...CEnvironments)
      .default(CEnvironments[0]),
    // url and port
    PORT: joi.number().default(8080),
    URL: joi
      .string()
      .uri({ scheme: [/https?/] })
      .default('https://localhost'),
    // database
    MONGO_URI: joi
      .string()
      .regex(/^mongodb/)
      .default('mongodb://localhost:27017/Mesh'),
    // bcrypt salt
    SALT: joi.number().min(4).max(15).default(10),
    // jwt config
    USER_SECRET: joi
      .string()
      .regex(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/)
      .min(10)
      .required(),
    USER_JWT_EXPIRATION: joi.string().default('1h'),
    DEVICE_JWT_EXPIRATION: joi.string().default('1d'),
    DEVICE_SECRET: joi
      .string()
      .regex(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/)
      .min(10)
      .required(),
    // redis
    REDIS_HOST: joi.string().default('localhost'),
    REDIS_PORT: joi.number().default(6379),
    // cluster
    CLUSTER_ENABLE: joi.boolean().default(false),
    // admin
    ADMIN_EMAIL: joi.string().email().required(),
    ADMIN_PASSWORD: joi.string().min(6).required(),
    ADMIN_FULLNAME: joi.string().required(),
    // docs
    DOCS_ENABLE: joi.boolean().default(false),
    DOCS_WRITE: joi.boolean().default(false),
  })
  .unknown(true);
