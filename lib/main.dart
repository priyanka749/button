import 'package:button/core/app_theme/app_theme.dart';
import 'package:button/view/time.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard App',
      theme: getApplicationTheme(),
      home: const TimeDatePickerPage(),
    );
  }
}
