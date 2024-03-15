import 'package:flutter/material.dart';

import 'package:mind_app/config/routes/app_routes.dart';
import 'package:mind_app/core/util/app_strings.dart';
import 'package:mind_app/core/util/media_query_values.dart';
import 'package:mind_app/core/util/path_images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQueryValues(context).width,
            height: MediaQueryValues(context).height,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(ImagesPath.splash),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImagesPath.logo, width: 300, height: 300),
                    const Text(
                      "Welcome to Mind App",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "The best app for your mind",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 140,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: MediaQueryValues(context).width,
                        height: 350,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(40),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Get Started",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.green[300],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, AppRoutes.login);
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 20,
                                backgroundColor: Colors.green[400],
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 120, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                AppStrings.login,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.register);
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 20,
                                backgroundColor: Colors.green[400],
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 120, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                AppStrings.register,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
