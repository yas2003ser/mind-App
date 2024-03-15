import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:mind_app/core/util/path_images.dart';
import 'package:mind_app/presentation/screen/auth/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        duration: const Duration(seconds: 3),
        backgroundImage: Image.asset(ImagesPath.splash),
        childWidget: Center(
          child: Image.asset(ImagesPath.logo),
        ),
        animationCurve: Curves.easeInOut,
        nextScreen: const WelcomeScreen(),
      ),
    );
  }
}
