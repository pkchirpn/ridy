import { NestjsQueryGraphQLModule, PagingStrategies } from '@nestjs-query/query-graphql';
import { NestjsQueryTypeOrmModule } from '@nestjs-query/query-typeorm';
import { Module } from '@nestjs/common';
import { ServiceCategoryEntity } from '@ridy/database/service-category.entity';
import { ServiceEntity } from '@ridy/database/service.entity';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { ServiceCategoryDTO } from './dto/service-category.dto';
import { ServiceDTO } from './dto/service.dto';

@Module({
    imports: [
        NestjsQueryGraphQLModule.forFeature({
            imports: [NestjsQueryTypeOrmModule.forFeature([ServiceCategoryEntity, ServiceEntity])],
            resolvers: [
                {
                    EntityClass: ServiceEntity,
                    DTOClass: ServiceDTO,
                    create: { many: { disabled: true } },
                    update: { many: { disabled: true } },
                    delete: { many: { disabled: true } },
                    pagingStrategy: PagingStrategies.NONE,
                    guards: [JwtAuthGuard]
                },
                {
                    EntityClass: ServiceCategoryEntity,
                    DTOClass: ServiceCategoryDTO,
                    create: { many: { disabled: true } },
                    update: { many: { disabled: true } },
                    delete: { many: { disabled: true } },
                    pagingStrategy: PagingStrategies.NONE,
                    guards: [JwtAuthGuard]
                }
            ]
        })
    ]
})
export class ServiceModule {}
