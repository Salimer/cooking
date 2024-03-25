import 'package:cooking/features/home/presentation/views/home_view.dart';
import 'package:cooking/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'core/config/config.dart';
import 'features/auth/presentation/views/views.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: OtpActiveAccountView(),
      ),
    );
  }
}
