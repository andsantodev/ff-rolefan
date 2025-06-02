// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

bool validateBirthDate(DateTime birthDate) {
  final currentDate = DateTime.now();
  final maxDate =
      DateTime(currentDate.year - 10, currentDate.month, currentDate.day);
  final minDate =
      DateTime(currentDate.year - 99, currentDate.month, currentDate.day);

  if (birthDate.isBefore(minDate) || birthDate.isAfter(maxDate)) {
    return false;
  }

  return true;
}
