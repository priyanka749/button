import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.grey[200],
      fontFamily: 'Montserrat Regular',
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat Regular'),
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      )));

  AppBarTheme:
  const AppBarTheme(
    centerTitle: true,
    color: Colors.amber,
    elevation: 4,
    shadowColor: Colors.black,
  );
}
