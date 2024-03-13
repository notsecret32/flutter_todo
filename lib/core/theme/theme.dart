import 'package:flutter/material.dart';
import 'package:flutter_todo/core/theme/colors.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kPrimaryColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
  ),
  fontFamily: 'Lato',
);
