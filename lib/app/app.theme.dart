import 'package:flutter/material.dart';

// * List of themes
List<ThemeData> getThemes() {
  return [
    ThemeData(
        backgroundColor: Colors.blue,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow)),
    ThemeData(
        backgroundColor: Colors.white,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
    ThemeData(
        backgroundColor: Colors.purple,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
    ThemeData(
        backgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red)),
    ThemeData(
        backgroundColor: Colors.red,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue)),
  ];
}

// * Dark Theme
ThemeData darkTheme =
    ThemeData(brightness: Brightness.dark, backgroundColor: Colors.black87);

// * Light Theme
ThemeData lightTheme =
    ThemeData(brightness: Brightness.light, backgroundColor: Colors.white60);
