import 'dart:developer';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:al_quran/reconstructed_app/injection.dart';
import 'package:al_quran/reconstructed_app/reconstructed_app.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

/* app 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectionInit();
  _Logging.initialize(showLog: true);
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(ReconstructedApp(savedThemeMode: savedThemeMode));
}

abstract class _Logging {
  static bool isInitialize = false;

  static Future<void> initialize({bool showLog = false}) async {
    if (!_Logging.isInitialize) {
      Logger.root.level = showLog ? Level.ALL : Level.OFF;

      Logger.root.onRecord.listen((record) {
        final level = record.level;
        final name = record.loggerName;
        final message = record.message;
        final strackTrace = record.stackTrace;
        final error = record.error;

        if (level == Level.FINE ||
            level == Level.FINER ||
            level == Level.FINEST) {
          log('✅ ${level.name} "$name" : $message');
        } else if (level == Level.SEVERE ||
            level == Level.SHOUT ||
            level == Level.WARNING) {
          log('⛔ ${level.name} "$name" : $message${error != null ? '\nError : $error' : ''}${strackTrace != null ? '\n$strackTrace' : ''}');
        } else if (level == Level.INFO || level == Level.CONFIG) {
          log('ℹ️ ${level.name} "$name" : $message');
        }
      });

      _Logging.isInitialize = true;
    }
  }
}
