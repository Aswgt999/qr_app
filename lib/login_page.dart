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
      backgroundColor: Colors.teal[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGIN HEADING
            Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // FIELD TO ENTER ROLL NO
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 50),
              child: TextField(
                controller: rollNo,
                decoration: InputDecoration(
                    hintText: 'Roll no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true),
              ),
            ),
            // FIELD TO ENTER PASSWORD
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 50),
              child: TextField(
                controller: passWord,
                decoration: InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true),
              ),
            ),
            // LOGIN BUTTON
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.teal[600],fixedSize: Size(80, 40)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const QrPage()));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18,),
              ),
            ),
            SizedBox(height: 10,),
            // FOR REGISTERING A NEW ACCOUNT
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),
                text: 'dont have an account? Register',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
