import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mind_app/presentation/provider/nav_bar_provider.dart';

import 'package:mind_app/presentation/screen/navBar_screens/home.dart';
import 'package:mind_app/presentation/screen/navBar_screens/settings_screen.dart';
import 'package:mind_app/presentation/widgets/nav_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget activeScreen;
    final index = ref.watch(navBarProvider);
    switch (index) {
      case 0:
        activeScreen = const Home();
        break;
      case 1:
        activeScreen = const Center(
          child: Text('Profile'),
        );
        break;
      case 2:
        activeScreen = const SettingsScreen();
        break;
      default:
        activeScreen = const Home();
    }

    return Scaffold(
      bottomNavigationBar: const NavBar(),
      backgroundColor: Colors.white,
      body: activeScreen,
    );
  }
}
