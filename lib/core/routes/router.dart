import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/screens/login_screen.dart';
import '../../features/home/screens/home_screen.dart';

final router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: '/auth/login',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/auth/login',
      name: 'login',
      builder: (_, __) => const LoginScreen(),
    )
  ],
);
