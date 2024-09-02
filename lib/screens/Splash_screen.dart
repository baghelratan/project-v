

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:meeting_app/screens/onboarding.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: double.infinity,
      duration: 3000,
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 75,
              width: 75,
              child: Image.asset(
                'assets/image/splashlogo.png',
                fit: BoxFit.fill,
              ),
            ),
            const Text(
              "Chatbox",
              style: TextStyle(
                  fontFamily: 'sanchez',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      pageTransitionType: PageTransitionType.fade,
      nextScreen: const Onboarding(),
    );
  }
}
