import 'package:flutter/material.dart';
import 'package:meeting_app/imagepath.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SizedBox(
          width: 0,
          height: 0,
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 24,
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                width: 175,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  'Log in to Chatbox',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome back! Sign in using your social account or email to continue',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Image.asset(Imagepath.image1,
                            width: 20, height: 24),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Image.asset(Imagepath.image2,
                            width: 20, height: 24),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Image.asset(Imagepath.image3,
                            width: 20, height: 24),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 329,
                height: 14,
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('OR', style: TextStyle(fontSize: 12.0)),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Container(
                width: 320,
                height: 58,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Your email',
                    labelStyle: TextStyle(color: Colors.teal),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  ),
                ),
              ),
              SizedBox(height: 0),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              SizedBox(height: 0),
              Container(
                width: 320,
                height: 58,
                child: TextField(
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.teal),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    suffixIcon: SizedBox(
                      width: 24,
                      height: 24,
                      child: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  minimumSize: Size(double.infinity, 55),
                ),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.teal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
