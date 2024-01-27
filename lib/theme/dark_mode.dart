import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade600,
    secondary: const Color.fromARGB(255, 44, 44, 44),
    tertiary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Color.fromARGB(255, 54, 54, 54),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: GoogleFonts.latoTextTheme(
    const TextTheme().copyWith(
      titleLarge: const TextStyle(color: Colors.white),
    ),
  ),
);
