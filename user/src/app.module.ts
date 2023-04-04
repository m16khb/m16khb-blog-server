import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SignInModule } from './sign-in/sign-in.module';
import { SignUpModule } from './sign-up/sign-up.module';

@Module({
  imports: [SignInModule, SignUpModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
