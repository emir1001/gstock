import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

import 'database_connexion.dart';

class Repository {
  DatabaseConnection _databaseConnection;
  Repositor() {
    //initialize database
    _databaseConnection = DatabaseConnection();
  }

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _databaseConnection.setDatabase();
    return _database;
  }

  // inserting data to table
  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

//read data
  readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }
}
