import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';
import '../../core/theme/text_theme.dart';

class TodoTextFormField extends StatelessWidget {
  const TodoTextFormField({
    super.key,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.password = false,
  });

  final String? hintText;
  final TextInputType? keyboardType;
  final bool password;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TextFormField(
      obscureText: password,
      enableSuggestions: !password,
      autocorrect: !password,
      style: textTheme.secondaryText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(12),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kInactiveBorderColor,
            strokeAlign: 0.8,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kActiveBorderColor,
            strokeAlign: 0.8,
          ),
        ),
      ),
    );
  }
}
