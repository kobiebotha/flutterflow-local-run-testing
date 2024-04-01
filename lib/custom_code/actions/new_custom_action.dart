// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:powersync/powersync.dart' as powersync;
import '/custom_code/actions/setup_power_sync.dart';

Future<List<dynamic>> newCustomAction() async {
  final results = (await db.getAll('SELECT * from lists'));

  //return results.map((row) => row.cast());
  return results;
}
