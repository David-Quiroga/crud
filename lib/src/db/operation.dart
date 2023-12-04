import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Operation {
  Future<Database> _openDB(){
    return openDatabase(
      join(getDatabasesPath(), 
      "notes.db")
    );
  }
}