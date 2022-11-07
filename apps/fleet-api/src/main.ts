import { Logger } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { FleetAPIModule } from './app/fleet-api.module';
import {
  FastifyAdapter,
  NestFastifyApplication,
} from '@nestjs/platform-fastify';
import fastifyStatic from 'fastify-static';
import fastifyMultipart from 'fastify-multipart';
import fastifyCors from "fastify-cors";
import { join } from 'path';

async function bootstrap() {
  const adapter = new FastifyAdapter();
  const app = await NestFactory.create<NestFastifyApplication>(
    FleetAPIModule,
    adapter
  );

  const port = process.env.FLEET_API_PORT || 3000;
  app.enableShutdownHooks();
  app.register(fastifyCors);
  app.register(fastifyMultipart);
  app.register(fastifyStatic, {
    prefix: '/uploads/',
    root: join(process.cwd(), 'uploads'),
  });
  await app.listen(port, '0.0.0.0', () => {
    Logger.log(`Listening at http://localhost:${port}`, 'Fleet API');
  });
}

bootstrap();
