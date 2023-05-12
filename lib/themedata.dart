import 'package:flutter/material.dart';

final ThemeData dark = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: Colors.black, secondary: Colors.white),
  scaffoldBackgroundColor: Colors.black,
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
);

final ThemeData light = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: Colors.white, secondary: Colors.black),
  iconTheme: const IconThemeData(color: Colors.black),
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
);
