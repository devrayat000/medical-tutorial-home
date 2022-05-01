import 'package:flutter/material.dart';

final theme = ThemeData.dark().copyWith(
  backgroundColor: const Color(0xFF253334),
  scaffoldBackgroundColor: const Color(0xFF253334),
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  ),
);
