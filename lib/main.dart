import 'package:flutter/material.dart';
import 'package:loja_virtual/home.dart';

ThemeData theme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white)
    ),
  ),
);

void main (){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: theme,
  ));

}