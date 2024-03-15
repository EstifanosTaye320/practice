import {Controller, Module, Get} from '@nestjs/common';
import {NestFactory} from '@nestjs/core';

@Controller()
class AppController {
  @Get()
  getRootRout() {
    return 'hi there!';
  }
}

@Module({
  controllers: [AppController]
})
class AppModule {}

async function bootstrup() {
  const app = await NestFactory.create(AppModule);

  await app.listen(3000);
}
bootstrup();