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

import 'dart:convert'; // Para codificação JSON
import 'package:device_info_plus/device_info_plus.dart'; // Para capturar informações do dispositivo
import 'package:flutter/foundation.dart'; // Import para kIsWeb

Future<String> getDeviceInfo() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> deviceData = {};

  try {
    if (kIsWeb) {
      // Verifica se é Web
      WebBrowserInfo webInfo = await deviceInfoPlugin.webBrowserInfo;
      deviceData = {
        'platform': 'Web',
        'browserName': describeEnum(webInfo.browserName),
        'appName': webInfo.appName,
        'appVersion': webInfo.appVersion,
        'userAgent': webInfo.userAgent,
      };
    } else {
      // Usar info nativa para Android e iOS
      var info = await deviceInfoPlugin.deviceInfo;
      if (info is AndroidDeviceInfo) {
        deviceData = {
          'platform': 'Android',
          'brand': info.brand,
          'model': info.model,
          'androidVersion': info.version.release,
          'isPhysicalDevice': info.isPhysicalDevice,
        };
      } else if (info is IosDeviceInfo) {
        deviceData = {
          'platform': 'iOS',
          'name': info.name,
          'systemName': info.systemName,
          'systemVersion': info.systemVersion,
          'model': info.model,
          'isPhysicalDevice': info.isPhysicalDevice,
        };
      } else {
        deviceData = {
          'platform': 'Unknown',
          'error': 'Platform not supported',
        };
      }
    }
  } catch (e) {
    deviceData = {
      'error': 'Failed to get device information: $e',
    };
  }

  // Retorna os dados do dispositivo como uma string JSON
  return jsonEncode(deviceData);
}
