import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/colors.dart';
import '../../../core/theme/text_theme.dart';
import '../../../core/widgets/todo_button.dart';
import '../../../core/widgets/todo_text_form_field.dart';
import '../widgets/auth_clickable_text.dart';
import '../widgets/auth_divider.dart';
import '../widgets/auth_with_services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => log('LoginScreen: AppBar => back'),
          icon: SvgPicture.asset(
            'assets/images/svg/arrow_back.svg',
            width: 24,
            height: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 41,
                ),
                Text(
                  'Login',
                  style: textTheme.screenTitle,
                ),
                const SizedBox(height: 53),
                Text(
                  'Username',
                  style: textTheme.secondaryText,
                ),
                const SizedBox(height: 8),
                const TodoTextFormField(
                  hintText: 'Enter your Username',
                ),
                const SizedBox(height: 25),
                Text(
                  'Password',
                  style: textTheme.secondaryText,
                ),
                const SizedBox(height: 8),
                const TodoTextFormField(
                  hintText: 'Enter your Password',
                  password: true,
                ),
                const SizedBox(height: 69),
                TodoButton(
                  onPressed: () => log('LoginScreen: TodoButton => Login!'),
                  color: kActiveButtonColor,
                  child: Text(
                    'Login',
                    style: textTheme.secondaryText,
                  ),
                ),
                const SizedBox(height: 31),
                const AuthDivider(),
                const SizedBox(height: 29),
                const AuthWithServices(),
                const SizedBox(
                  height: 46,
                ),
                const Align(
                  child: AuthClickableText(
                    text: 'Don’t have an account?',
                    clickableText: 'Register',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
