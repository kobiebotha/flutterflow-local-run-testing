// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/initps.dart';
import 'package:powersync/powersync.dart' as powersync;

Future insertRowCustomAction(String field) async {
  final insertResult = await db.execute(
      'INSERT INTO lists(id, created_at, name, owner_id) VALUES(uuid(), datetime(), ?, ?) RETURNING *',
      [field, Supabase.instance.client.auth.currentSession?.user.id]);

  return;
}
