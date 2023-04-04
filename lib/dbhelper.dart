import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

//Datenbank initalisieren, ABC-Listen-Tabelle erstellen
class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE list(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        a TEXT,
        b TEXT,
        c TEXT,
        d TEXT,
        e TEXT,
        f TEXT,
        g TEXT,
        h TEXT,
        i TEXT,
        j TEXT,
        k TEXT,
        l TEXT,
        m TEXT,
        n TEXT,
        o TEXT,
        p TEXT,
        q TEXT,
        r TEXT,
        s TEXT,
        t TEXT,
        u TEXT,
        v TEXT,
        w TEXT,
        x TEXT,
        y TEXT,
        z TEXT
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'abc_list.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // Erstellen neuer Liste
  static Future<int> createList(
      String title,
      String a,
      String b,
      String c,
      String d,
      String e,
      String f,
      String g,
      String h,
      String i,
      String j,
      String k,
      String l,
      String m,
      String n,
      String o,
      String p,
      String q,
      String r,
      String s,
      String t,
      String u,
      String v,
      String w,
      String x,
      String y,
      String z) async {
    final db = await SQLHelper.db();

    //Zuweisung der Inhalte der Liste
    final data = {
      'title': title,
      'a': a,
      'b': b,
      'c': c,
      'd': d,
      'e': e,
      'f': f,
      'g': g,
      'h': h,
      'i': i,
      'j': j,
      'k': k,
      'l': l,
      'm': m,
      'n': n,
      'o': o,
      'p': p,
      'q': q,
      'r': r,
      's': s,
      't': t,
      'u': u,
      'v': v,
      'w': w,
      'x': x,
      'y': y,
      'z': z
    };
    final id = await db.insert('list', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // holen aller Listen
  static Future<List<Map<String, dynamic>>> getLists() async {
    final db = await SQLHelper.db();
    return db.query('list', orderBy: "id");
  }

  // holen einer Listen mit id
  static Future<List<Map<String, dynamic>>> getList(int id) async {
    final db = await SQLHelper.db();
    return db.query('list', where: "id = ?", whereArgs: [id], limit: 1);
  }

  // updaten einer Liste
  static Future<int> updateList(
      int id,
      String title,
      String a,
      String b,
      String c,
      String d,
      String e,
      String f,
      String g,
      String h,
      String i,
      String j,
      String k,
      String l,
      String m,
      String n,
      String o,
      String p,
      String q,
      String r,
      String s,
      String t,
      String u,
      String v,
      String w,
      String x,
      String y,
      String z) async {
    final db = await SQLHelper.db();

    final data = {
      'title': title,
      'a': a,
      'b': b,
      'c': c,
      'd': d,
      'e': e,
      'f': f,
      'g': g,
      'h': h,
      'i': i,
      'j': j,
      'k': k,
      'l': l,
      'm': m,
      'n': n,
      'o': o,
      'p': p,
      'q': q,
      'r': r,
      's': s,
      't': t,
      'u': u,
      'v': v,
      'w': w,
      'x': x,
      'y': y,
      'z': z
    };

    final result =
        await db.update('list', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // löschen einer Liste, anhand der id
  static Future<void> deleteList(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("list", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Error when deleting an list: $err");
    }
  }
}
