import 'package:cooking/core/config/app_theme.dart';
import 'package:cooking/features/auth/presentation/views/login_view.dart';
import 'package:cooking/features/auth/presentation/views/onboarding_view.dart';
import 'package:cooking/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: LoginView()
    );
  }
}
