class EnvData {
  static const DATABASE_NAME = 'FLUTTER_CRUD_DB';

  static const USER_TABLE = 'TB_USER';

  static const CMD_CREATE = 'CREATE TABLE ' +
      USER_TABLE +
      ' (ID TEXT INTEGER PRIMARY KEY,name TEXT, email TEXT, avatarUrl TEXT)';
}
