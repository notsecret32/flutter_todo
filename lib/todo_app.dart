import 'package:flutter/material.dart';
import 'package:flutter_todo/core/routes/router.dart';
import 'package:flutter_todo/core/theme/theme.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      routerConfig: router,
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
    );
  }
}
