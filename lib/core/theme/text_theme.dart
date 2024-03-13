import 'package:flutter/material.dart';

extension CustomTextTheme on TextTheme {
  TextStyle get appTitle => const TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.normal,
        fontSize: 20,
        letterSpacing: -0.5,
      );

  TextStyle get screenTitle => const TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );

  TextStyle get secondaryText => const TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
}
