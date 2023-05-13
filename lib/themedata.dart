import 'package:flutter/material.dart';

final ThemeData dark = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: Colors.black, secondary: Colors.white),
  scaffoldBackgroundColor: Colors.black,
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          fontFamily: 'MaplestoryFont',
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 40)),
);

final ThemeData light = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: Colors.white, secondary: Colors.black),
  iconTheme: const IconThemeData(color: Colors.black),
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          fontFamily: 'MaplestoryFont',
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 40)),
);
