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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<String> custAct2() async {
  final readResult = (await db.get('SELECT count(*) from lists')).toString();
  var dbPath = await getDatabasePath();
  //return 'it worked, dbpath = ' + dbPath;
  return 'read worked, results = ' + readResult;
}