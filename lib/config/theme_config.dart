import 'package:flutter/material.dart';

//主题配置
ThemeData ThemeConfig(){
  return ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 0
    ),
    scaffoldBackgroundColor: Colors.white,
    highlightColor: Colors.white,
    splashColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.black)
    )
  );
}