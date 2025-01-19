import 'dart:async';
import 'dart:developer';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../../modules/sales_man/models/cart_item_model.dart';

class DatabaseHelper {
  List productName = [];

  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('cart.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    // const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';
    const doubleType = 'DOUBLE NOT NULL';

    await db.execute('''
CREATE TABLE $tableCartProduct (
  ${CartItemModel.ID} $idType,
  ${CartItemModel.PRODUCT_ID} $integerType,
  ${CartItemModel.NAME} $textType,
  ${CartItemModel.IMAGE} $textType,
  ${CartItemModel.QUANTITY} $integerType,
  ${CartItemModel.PRICE} $doubleType,
  ${CartItemModel.COST} $doubleType,
  ${CartItemModel.UNIT} $textType,
  ${CartItemModel.INGREDIENTS} $textType
  )
''');
  }

  Future<int> addProduct(CartItemModel cart) async {
    final db = await instance.database;
    final id = await db.insert(tableCartProduct, cart.toJson());
    log("added to database cart", name: 'DB Helper');
    return id;
  }

  Future<CartItemModel> getCartProduct(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableCartProduct,
      columns: CartItemModel.values,
      where: '${CartItemModel.ID} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return CartItemModel.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<bool> searchCartProduct(int id) async {
    final db = await instance.database;
    final maps = await db.query(
      tableCartProduct,
      columns: CartItemModel.values,
      where: '${CartItemModel.PRODUCT_ID} = ?',
      whereArgs: [id],
    );
    return maps.isNotEmpty;
  }

  Future<List<CartItemModel>> getAllCartProduct() async {
    final db = await instance.database;

    final result = await db.query(tableCartProduct);

    return result.map((json) => CartItemModel.fromJson(json)).toList();
  }

  Future<int> updateProduct(CartItemModel cart) async {
    final db = await instance.database;

    return db.update(
      tableCartProduct,
      cart.toJson(),
      where: '${CartItemModel.ID} = ?',
      whereArgs: [cart.id],
    );
  }

  Future<int> deleteProduct(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableCartProduct,
      where: '${CartItemModel.ID} = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteAllProduct() async {
    final db = await instance.database;
    return await db.delete(
      tableCartProduct,
    );
  }

  Future<List> searchProduct(int productId) async {
    var clientDB = await instance.database;
    var sqlQuery =
        'SELECT * FROM $tableCartProduct WHERE ${CartItemModel.PRODUCT_ID} = $productId';
    List result = await clientDB.rawQuery(sqlQuery);
    return result.toList();
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
