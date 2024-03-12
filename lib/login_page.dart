// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Login'),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: TextField(
                controller: rollNo,
                decoration: InputDecoration(labelText: 'Roll no'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: TextField(
                controller: passWord,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: TextButton(

                onPressed: null,
                child: Text('Login'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: RichText(
                text: TextSpan(
                  text: 'Register',
                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage())),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
