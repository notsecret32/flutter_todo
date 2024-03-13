import 'package:flutter/material.dart';

import './colors.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kPrimaryColor,
  fontFamily: 'Lato',
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
  ),
);
