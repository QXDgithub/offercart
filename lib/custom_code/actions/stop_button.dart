// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';

Future stopButton(BuildContext context) async {
  // a custom action which can stop the functionality of the widget or 14 days
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('stopWidget', true);
  DateTime now = DateTime.now();
  DateTime stopDate = now.add(Duration(days: 14));
  await prefs.setString('stopDate', stopDate.toString());
}
