import 'package:flutter/material.dart';
import 'package:mind_app/core/util/path_images.dart';
import 'package:mind_app/presentation/widgets/choice.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(ImagesPath.logo, width: 200, height: 200),
              const SizedBox(height: 20),
              const Text('What are you suffering from'),
              const SizedBox(height: 40),
              Choice(
                color: Colors.green,
                asset: ImagesPath.logo,
                text: 'Do you suffer from amnesia',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              Choice(
                color: Colors.blue,
                asset: ImagesPath.logo,
                text: 'You have a lack of concentration',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              Choice(
                color: Colors.red,
                asset: ImagesPath.logo,
                text: 'Do you suffer from constant anxiety?',
                onTap: () {},
              ),
            ],
          ),
        );
  }
}