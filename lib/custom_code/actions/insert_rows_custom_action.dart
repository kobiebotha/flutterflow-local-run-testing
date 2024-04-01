// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/setup_power_sync.dart';
import 'package:powersync/powersync.dart' as powersync;

const bool kIsWeb = bool.fromEnvironment('dart.library.js_util');

Future insertRowsCustomAction(String field) async {
  final insertResult = await db.execute(
      'INSERT INTO lists(id, created_at, name) VALUES(uuid(), datetime(), ?) RETURNING *',
      [field]);

  return;
}
