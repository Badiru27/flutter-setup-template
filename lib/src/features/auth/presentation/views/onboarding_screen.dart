import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meuve_v2/src/core/extensions/theme_extension.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static String route = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome',
              style: context.textTheme.headlineLarge,
            ),
          )
        ],
      ),
    );
  }
}
