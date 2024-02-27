

import 'package:flutter/material.dart';
import 'package:netlottodemo/main_screen_widget.dart';

import 'app_config.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO: replace with AppConfig-extracted app title
      title: AppConfig.of(context).appTitle,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MainScreenWidget(),
    );
  }
}