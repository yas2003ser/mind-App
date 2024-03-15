import 'package:flutter/material.dart';
import 'package:mind_app/presentation/screen/auth/information_screen.dart';
import 'package:mind_app/presentation/screen/auth/login/login_screen.dart';
import 'package:mind_app/presentation/screen/auth/register/register_screen.dart';
import 'package:mind_app/presentation/screen/auth/welcome_screen.dart';
import 'package:mind_app/presentation/screen/home/home_screen.dart';
import 'package:mind_app/presentation/screen/splash/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String help = '/help';
  static const String information = '/information';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case information:
        return MaterialPageRoute(builder: (_) => const InformationScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      // case profile:
      //   return MaterialPageRoute(builder: (_) => ProfileScreen());
      // case settings:
      //   return MaterialPageRoute(builder: (_) => SettingsScreen());
      // case about:
      //   return MaterialPageRoute(builder: (_) => AboutScreen());
      // case contact:
      //   return MaterialPageRoute(builder: (_) => ContactScreen());
      // case help:
      //   return MaterialPageRoute(builder: (_) => HelpScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
