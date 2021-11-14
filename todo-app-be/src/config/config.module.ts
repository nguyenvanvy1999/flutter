import { Global, Module } from '@nestjs/common';
import { EventEmitterModule } from '@nestjs/event-emitter';
import { ThrottlerModule } from '@nestjs/throttler';
import { CustomCacheModule } from './cache/cache.module';
import { DatabaseModule } from './database/database.module';
import { EnvModule } from './env/env.module';
import { FilterModule } from './filters/filter.module';
import { InterceptorModule } from './interceptors/interceptor.module';
import { LoggerModule } from './log/logger.module';
import { MonitorModule } from './monitor/monitor.module';
import { PipeModule } from './pipe/pipe.module';
import { QueuesModule } from './queue/queue.module';
import { ServerStaticModule } from './static/static.module';

@Global()
@Module({
  imports: [
    EventEmitterModule.forRoot({
      wildcard: false,
      delimiter: '.',
      newListener: true,
      removeListener: true,
      maxListeners: 10,
      verboseMemoryLeak: true,
      ignoreErrors: false,
    }),
    ThrottlerModule.forRoot({
      ttl: 60,
      limit: 10,
    }),
    DatabaseModule,
    EnvModule,
    InterceptorModule,
    PipeModule,
    CustomCacheModule,
    FilterModule,
    QueuesModule,
    ServerStaticModule,
    MonitorModule,
    LoggerModule,
  ],
  exports: [
    DatabaseModule,
    EnvModule,
    InterceptorModule,
    PipeModule,
    CustomCacheModule,
    FilterModule,
    QueuesModule,
    ServerStaticModule,
    MonitorModule,
    LoggerModule,
  ],
})
export class ConfigModule {}
