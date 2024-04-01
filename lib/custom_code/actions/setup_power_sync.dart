// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:powersync/powersync.dart' as powersync;

late powersync.PowerSyncDatabase db;

const bool kIsWeb = bool.fromEnvironment('dart.library.js_util');

Future setupPowerSync() async {
  powersync.Schema schema = powersync.Schema(([
    const powersync.Table('todos', [
      powersync.Column.text('list_id'),
      powersync.Column.text('photo_id'),
      powersync.Column.text('created_at'),
      powersync.Column.text('completed_at'),
      powersync.Column.text('description'),
      powersync.Column.integer('completed'),
      powersync.Column.text('created_by'),
      powersync.Column.text('completed_by'),
    ]),
    const powersync.Table('lists',
        [powersync.Column.text('created_at'), powersync.Column.text('name')])
  ]));

  db = powersync.PowerSyncDatabase(
      schema: schema, path: await getDatabasePath());

  await db.initialize();

  //insert some dummy data
  final insertResult = await db.execute(
      'INSERT INTO lists(id, created_at, name) VALUES(uuid(), datetime(), ?) RETURNING *',
      ['Item 11']);

  final insertResult2 = await db.execute(
      'INSERT INTO lists(id, created_at, name) VALUES(uuid(), datetime(), ?) RETURNING *',
      ['Item 12']);
}

Future<String> getDatabasePath() async {
  final dir = await getApplicationSupportDirectory();
  return join(dir.path, 'powersync-demo2.db');
}
