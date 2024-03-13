// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qr_app1/qr_page.dart';
import 'package:qr_app1/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final rollNo = TextEditingController();
  final passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGIN HEADING
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Login', style: TextStyle(fontSize: 32, color: Colors.white,),),
            ),
            // FIELD TO ENTER ROLL NO
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: TextField(
                controller: rollNo,
                decoration: InputDecoration(labelText: 'Roll no'),
              ),
            ),
            // FIELD TO ENTER PASSWORD
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: TextField(
                controller: passWord,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            // LOGIN BUTTON
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QrPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            // FOR REGISTERING A NEW ACCOUNT
            Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: 'dont have an account? Register',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage())),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
