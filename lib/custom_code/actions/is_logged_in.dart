// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> isLoggedIn() async {
  // check if a supabase user is authenticaated
  final session = await Supabase.instance.client.auth.currentSession;
  if (session != null && session.accessToken != null) {
    return 'true';
  } else {
    return 'false';
  }
}
