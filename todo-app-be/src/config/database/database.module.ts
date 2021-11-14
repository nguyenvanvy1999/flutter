import { Module } from '@nestjs/common';
import { MongooseModule } from '@nestjs/mongoose';
import { EnvModule } from '../env/env.module';
import { EnvService } from '../env/services';
import { kMongoOption } from './mongo-option.const';

@Module({
  imports: [
    MongooseModule.forRootAsync({
      inject: [EnvService],
      useFactory: (config: EnvService) => {
        return {
          uri: config.getString('MONGO_URI'),
          ...kMongoOption,
        };
      },
      imports: [EnvModule],
    }),
  ],
})
export class DatabaseModule {}
