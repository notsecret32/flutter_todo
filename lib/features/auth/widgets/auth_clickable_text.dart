import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';
import '../../../core/theme/text_theme.dart';

class AuthClickableText extends StatelessWidget {
  const AuthClickableText({
    super.key,
    required this.text,
    required this.clickableText,
  });

  final String text;
  final String clickableText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RichText(
      text: TextSpan(
        text: text,
        style: textTheme.secondaryText.copyWith(
          color: kInactiveBorderColor,
        ),
        children: <TextSpan>[
          TextSpan(
            text: clickableText,
            style: textTheme.secondaryText.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
