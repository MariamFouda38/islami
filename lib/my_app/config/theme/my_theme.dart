import 'package:flutter/material.dart';
import 'package:islami_app/my_app/core/color_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Color(0xFF242424))),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.goldColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
      textTheme: TextTheme(
          labelMedium: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 22, color: Colors.black),
          titleMedium: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w100)),
      dividerColor: Color(0xFFB7935F));
}
