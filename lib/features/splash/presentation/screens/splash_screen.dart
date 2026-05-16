import 'dart:async';
import 'package:flutter/material.dart';
import 'package:store__app/features/auth/presentation/screens/login_screen.dart';

import '../widget/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void navigateToLogin(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToLogin(context);

    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashBody(),
    );
  }
}
