import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_gstock_sqflite');
    var database =
        await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
    return database;
  }

  _onCreatingDatabase(Database database, int version) async {
    await database.execute(
        "CREATE TABLE Component(id INTEGER PRIMARY KEY , family TEXT , name TEXT ,quantity TEXT,date TEXT");
  }
}
