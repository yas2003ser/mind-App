import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_app/presentation/widgets/button_settings.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Settings')),
          actions: [
            IconButton(
              icon: const Icon(Icons.light_mode),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonSettings(
                text: 'Profile',
                onTap: () {},
                icon: Icons.person,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonSettings(
                text: 'About Us',
                onTap: () {},
                icon: Icons.info,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonSettings(
                text: 'feedback',
                onTap: () {},
                icon: Icons.feedback,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonSettings(
                text: 'Log Out',
                onTap: () {},
                icon: Icons.logout,
              ),
            ],
          ),
        ));
  }
}
