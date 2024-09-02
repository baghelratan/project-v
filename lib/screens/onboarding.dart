// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/onborading_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      'assets/image/splashlogo.png',
                      color: Colors.white,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Chatbox",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sanchez',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Connect\n',
                        style: TextStyle(
                          letterSpacing: 4,
                          fontFamily: 'sansation',
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      ),
                      TextSpan(
                        text: 'friends\n',
                        style: TextStyle(
                          letterSpacing: 4,
                          fontFamily: 'sansation',
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      ),
                      TextSpan(
                        text: 'easily &\n',
                        style: TextStyle(
                          letterSpacing: 4,
                          fontFamily: 'sansation',
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      ),
                      TextSpan(
                        text: 'quickly',
                        style: TextStyle(
                          letterSpacing: 4,
                          fontFamily: 'sansation',
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Our Video Calling app is the perfect\nway to say connected with friends\nand family ",
                  style: TextStyle(
                      fontFamily: "sanchez_italic",
                      color: Colors.white70,
                      fontSize: 17,
                      wordSpacing: 4,
                      letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/image/facebook_logo.png')),
                  const SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/image/google_logo.png')),
                  const SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/image/apple_logo.png')),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: TextButton(
                      onPressed: () {
                        print("sign up button clicked");
                      },
                      child: const Text(
                        "Sign up with mail",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              const SizedBox(height: 10,),
              Center(child: TextButton(onPressed: (){
                 print("log in button clicked");
              }, child: const Text("Existing account ? Login in", style: TextStyle(fontFamily: "sanchez_italic", color: Colors.white),)))
            ],
          )),
    );
  }
}
