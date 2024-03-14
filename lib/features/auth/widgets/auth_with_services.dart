import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/text_theme.dart';
import '../../../core/widgets/todo_button.dart';

class AuthWithServices extends StatelessWidget {
  const AuthWithServices({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        TodoButton(
          onPressed: () => log(
            'LoginScreen: TodoButton => Login with Google!',
          ),
          child: _createTextWithIcon(
            textStyle: textTheme.secondaryText,
            pathToAsset: 'assets/images/svg/google_logo.svg',
            text: 'Login with Google',
          ),
        ),
        const SizedBox(height: 20),
        TodoButton(
          onPressed: () => log(
            'LoginScreen: TodoButton => Login with Apple!',
          ),
          child: _createTextWithIcon(
            textStyle: textTheme.secondaryText,
            pathToAsset: 'assets/images/svg/apple_logo.svg',
            text: 'Login with Apple',
          ),
        ),
      ],
    );
  }

  Widget _createTextWithIcon({
    required TextStyle? textStyle,
    required String pathToAsset,
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(pathToAsset),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
