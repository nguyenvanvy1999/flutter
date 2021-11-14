import { ConfigService } from '@nestjs/config';
import { Injectable } from '@nestjs/common';
import {
  EValueType,
  IJwtConfig,
  IDocsConfig,
  IAppConfig,
  IRedisConfig,
} from '../interfaces';
import camelcaseKeys from 'camelcase-keys';

@Injectable()
export class EnvService extends ConfigService {
  constructor() {
    super();
  }

  public getMany(keys: string[], types?: EValueType[]): any {
    if (keys.length === 0) {
      throw new Error('Invalid data');
    }
    const values = {};
    for (let i = 0; i < keys.length; i++) {
      let tmp = this.get(keys[i].toUpperCase());
      if (types?.length && types?.length !== 0) {
        switch (types[i]) {
          case EValueType.String:
            tmp = String(tmp);
            break;
          case EValueType.Number:
            tmp = Number(tmp);
            break;
          case EValueType.Boolean:
            tmp = Boolean(tmp);
            break;
          default:
            tmp = String(tmp);
            break;
        }
      }
      values[keys[i]] = tmp || undefined;
    }
    return camelcaseKeys(values);
  }

  public getNumber(key: string, defaultValue?: number): number {
    const value = this.get<number>(key.toUpperCase(), defaultValue);
    if (value === undefined) {
      return;
    }
    try {
      return Number(value);
    } catch {
      throw new Error(key + ' env var is not a number');
    }
  }

  public getBoolean(key: string, defaultValue?: boolean): boolean {
    const value = this.get<string>(key.toUpperCase(), defaultValue?.toString());
    if (value === undefined) {
      return;
    }
    try {
      return Boolean(JSON.parse(value));
    } catch {
      throw new Error(key + ' env var is not a boolean');
    }
  }

  public getString(key: string, defaultValue?: string): string {
    const value = this.get<string>(key.toUpperCase(), defaultValue);
    if (!value) {
      return;
    }
    return value.toString().replace(/\\n/g, '\n');
  }

  get isDebug(): boolean {
    return this.getBoolean('debug', false);
  }

  get app(): IAppConfig {
    const { port, host, nodeEnv } = this.getMany(
      ['port', 'host', 'node_env'],
      [EValueType.Number],
    );
    return {
      host,
      port,
      env: nodeEnv,
    };
  }

  get docs(): IDocsConfig {
    return {
      enable: this.getBoolean('docs_enable', false),
      write: this.getBoolean('docs_write', false),
    };
  }

  get salt(): number {
    return this.getNumber('salt');
  }

  get jwt(): IJwtConfig {
    const { secret, expiresIn } = this.getMany(['secret', 'expires_in']);
    return {
      secret,
      expiresIn,
    };
  }

  get cluster(): boolean {
    return this.getBoolean('cluster_enable', false);
  }

  get redis(): IRedisConfig {
    const { redisPort, redisHost } = this.getMany(
      ['redis_port', 'redis_host'],
      [EValueType.Number],
    );
    return { host: redisHost, port: redisPort };
  }
}
