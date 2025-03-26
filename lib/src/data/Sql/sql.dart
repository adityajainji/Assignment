import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static final DatabaseHelper instance = DatabaseHelper._init();

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('mydatabase.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        vId TEXT
      )
    ''');
  }

  Future<int> insertLike(String vId, int age) async {
    final db = await DatabaseHelper.instance.database;
    return await db.insert('likes', {'vId': vId});
  }

  Future<List<Map<String, dynamic>>> getLike() async {
    final db = await DatabaseHelper.instance.database;
    return await db.query('likes');
  }

  Future<int> updateLike(int id, String vId) async {
    final db = await DatabaseHelper.instance.database;
    return await db.update(
      'likes',
      {'vId': vId},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
