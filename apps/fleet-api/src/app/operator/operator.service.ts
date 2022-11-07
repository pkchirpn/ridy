import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { OperatorEntity } from '@ridy/database/operator.entity';
import { Repository } from 'typeorm';

@Injectable()
export class OperatorService {
    constructor(
        @InjectRepository(OperatorEntity)
        public repo: Repository<OperatorEntity>
    ) { }

    async validateCredentials(userName: string, password: string): Promise<OperatorEntity | null> {
        return this.repo.findOne({ userName, password });
    }

    async getById(id: number): Promise<OperatorEntity | null> {
        return this.repo.findOne(id);
    }
}
