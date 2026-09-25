import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff1877F2),
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: .bold,
        color: Color(0xffffffff),
      ),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Color(0xff202020),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        color: Color(0xffB0B3B8),
        fontWeight: .w400,
        fontSize: 13,
      ),
      titleMedium: TextStyle(
        color: Color(0xffE4E6EB),
        fontWeight: .w400,
        fontSize: 16,
      ),
      titleLarge: TextStyle(
        color: Color(0xffE4E6EB),
        fontWeight: .w400,
        fontSize: 24,
      ),
    ),
  );
}
