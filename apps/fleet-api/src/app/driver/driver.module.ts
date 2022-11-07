import { NestjsQueryGraphQLModule, PagingStrategies } from '@nestjs-query/query-graphql';
import { NestjsQueryTypeOrmModule } from '@nestjs-query/query-typeorm';
import { Module } from '@nestjs/common';
import { DriverEntity } from '@ridy/database/driver.entity';
import { SharedDriverService } from '@ridy/order/shared-driver.service';
import { RedisHelpersModule } from "@ridy/redis/redis-helper.module";
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { DriverResolver } from './driver.resolver';
import { DriverService } from './driver.service';
import { DriverDTO } from './dto/driver.dto';

@Module({
    imports: [
        RedisHelpersModule,
        NestjsQueryGraphQLModule.forFeature({
            imports: [NestjsQueryTypeOrmModule.forFeature([DriverEntity])],
            resolvers: [
                {
                    EntityClass: DriverEntity,
                    DTOClass: DriverDTO,
                    create: { disabled: true },
                    update: { disabled: true },
                    delete: { disabled: true },
                    pagingStrategy: PagingStrategies.OFFSET,
                    enableTotalCount: true,
                    enableAggregate: true,
                    guards: [JwtAuthGuard]
                }
            ]
        })
    ],
    providers: [DriverResolver, DriverService]
})
export class DriverModule {}
