import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';
import '../../../core/theme/text_theme.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            color: kInactiveBorderColor,
            height: 36,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Text(
            'or',
            style: textTheme.secondaryText.copyWith(
              color: kInactiveBorderColor,
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            color: kInactiveBorderColor,
            height: 36,
          ),
        ),
      ],
    );
  }
}
