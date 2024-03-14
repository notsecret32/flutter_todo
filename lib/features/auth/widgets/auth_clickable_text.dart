import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';
import '../../../core/theme/text_theme.dart';

class AuthClickableText extends StatelessWidget {
  const AuthClickableText({
    super.key,
    required this.text,
    required this.clickableText,
    this.onTap,
  });

  final String text;
  final String clickableText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: textTheme.secondaryText.copyWith(
            color: kInactiveBorderColor,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            clickableText,
            style: textTheme.secondaryText.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
