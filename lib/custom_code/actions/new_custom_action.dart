// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:powersync/powersync.dart' as powersync;

const bool kIsWeb = bool.fromEnvironment('dart.library.js_util');

Future<List<dynamic>> newCustomAction() async {
  setupPowerSync();

  final insertResult = await db.execute(
      'INSERT INTO lists(id, created_at, name) VALUES(uuid(), datetime(), ?) RETURNING *',
      ['Item 11']);

  final insertResult2 = await db.execute(
      'INSERT INTO lists(id, created_at, name) VALUES(uuid(), datetime(), ?) RETURNING *',
      ['Item 12']);

  final results = (await db.getAll('SELECT * from lists'));

  //return results.map((row) => row.cast());
  return results;
}
