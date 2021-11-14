import { Module } from '@nestjs/common';
import { EnvService } from './services';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { configModuleSetup } from './env.provider';

@Module({
  imports: [ConfigModule.forRoot(configModuleSetup)],
  providers: [EnvService, ConfigService],
  exports: [EnvService, ConfigService],
})
export class EnvModule {}
