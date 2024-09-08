import 'package:flutter/material.dart';
import 'package:meeting_app/Rootpage/routers_page.dart';
import 'package:meeting_app/screens/signinpage.dart';
import 'package:meeting_app/screens/splash_screen.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutersPages.splashScreen,
      routes: {
        RoutersPages.splashScreen: (context) => const SplashScreen(),
        RoutersPages.signpage: (context) => Signinpage(),
      },
    );
  }
}
