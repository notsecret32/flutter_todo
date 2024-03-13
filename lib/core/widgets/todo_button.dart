import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';

class TodoButton extends StatelessWidget {
  const TodoButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
  });

  final Widget child;
  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 12),
      shape: const OutlineInputBorder(
        borderSide: BorderSide(color: kButtonBorderColor),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
