import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main_screen.dart';
void main() {
  // 1
  const configuredApp = AppConfig(
    environment: Environment.dev,
    // 3
    appTitle: '[PROD] BuzzwordBingo',
    child: MainScreen(),
  );
  // 4
  runApp(configuredApp);
}
