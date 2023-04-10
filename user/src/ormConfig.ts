import { TypeOrmModuleOptions } from '@nestjs/typeorm';

function ormConfig(): TypeOrmModuleOptions {
  const options: TypeOrmModuleOptions = {
    type: 'mariadb',
    database: 'example',
    host: 'localhost',
    port: 3306,
    username: 'root',
    password: '0000',
    logging: true,
    logger: 'advanced-console',
    synchronize: false,
    autoLoadEntities: true,
  };

  return options;
}

export { ormConfig };
