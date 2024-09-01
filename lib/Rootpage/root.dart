import 'package:flutter/material.dart';
import 'package:meeting_app/Rootpage/Routers.dart';
import 'package:meeting_app/screens/Splash_screen.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:RoutersPages.splashScreen ,
      routes: {
        RoutersPages.splashScreen:(context)=> const SplashScreen()
      },
    );
  }
}