class SQLHelper{
  //create Table
  static Future<void> createTable(sql.Database db)async{
    await db.execute("""CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT
    email TEXT
    password TEXT
    )""");

  }
  //create database
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase(
        'datauser',
        version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }
  //create new user
  static Future<int> AddNewUser(String name, String email, String password) async {
    final db = await SQLHelper.OpenDb();
     final data = {'name': name, 'email': email,'password': password};
     final id = db.insert('user',data);
     return id;

}


