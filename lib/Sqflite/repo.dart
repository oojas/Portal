import 'package:sqflite/sqflite.dart';

class UserRepo {
  void createTable(Database? db) {
    db?.execute(
        'CREATE TABLE IF NOT EXISTS USER(id INTEGER PRIMARY KEY, name TEXT, rollNumber TEXT, year INTEGER)');
  }

  Future<List<Map<String, dynamic>>> getUsers(Database? db) async {
    final List<Map<String, dynamic>> maps = await db!.query('User');
    print(maps);
    return maps;
    
  }
}
