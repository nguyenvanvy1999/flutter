import 'package:sqflite/sqflite.dart';
import 'package:todo_app/models/task.dart';

class DBHelper {
  static Database? db;
  static const int version = 1;
  static const String tableName = 'tasks';
  static Future<void> initDb() async {
    if (db != null) return;
    try {
      String path = await getDatabasesPath() + 'tasks.db';
      db = await openDatabase(path, version: version, onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE $tableName (id INTEGER PRIMARY KEY AUTOINCREMENT, title STRING, note TEXT,date STRING, startTime STRING, endTime STRING, remind INTEGER, repeat STRING, color INTEGER, isComplete INTEGER)');
      });
    } catch (e) {
      String path = await getDatabasesPath() + 'tasks.db';
      await deleteDatabase(path);
      throw Error();
    }
  }

  static Future<int> insert(Task? task) async {
    return await db?.insert(tableName, task!.toJson()) ?? 1;
  }

  static Future query() async {
    return await db?.query(tableName);
  }

  static Future delete(Task task) async {
    await db?.delete(tableName, where: 'id=?', whereArgs: [task.id]);
  }

  static Future update(int id) async {
    await db?.rawUpdate('UPDATE tasks SET isComplete = ? WHERE id =?', [1, id]);
  }
}
