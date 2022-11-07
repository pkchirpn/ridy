import { Controller, Get, Post, Req, Res, UseGuards } from '@nestjs/common';
import * as fastify from 'fastify';
import { rm } from 'fs/promises';

import { RestJwtAuthGuard } from './auth/rest-jwt-auth.guard';
import { UploadService } from './upload/upload.service';

@Controller()
export class FleetAPIController {
    constructor(
        private uploadService: UploadService
    ) { }

    @Get()
    async defaultPath(@Res() res: fastify.FastifyReply) {
        res.send('✅ Fleet API microservice running.');
    }

    @Post('upload')
    @UseGuards(RestJwtAuthGuard)
    async upload(@Req() req: fastify.FastifyRequest, @Res() res: fastify.FastifyReply) {
        await this.uploadService.uploadMedia(req, res, 'uploads', (new Date().getTime()).toString());
    }
}
