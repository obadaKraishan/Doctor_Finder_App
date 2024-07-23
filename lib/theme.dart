import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFF42a5f5),
  scaffoldBackgroundColor: Color(0xFFe3f2fd),
  textTheme: TextTheme(
    titleLarge: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
  ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFbbdefb)).copyWith(background: Color(0xFFe3f2fd)),
);
