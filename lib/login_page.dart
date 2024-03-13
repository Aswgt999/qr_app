// ignore_for_file: prefer_const_constructors


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
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
            height: 150,
          ),
          // FIELD TO ENTER ROLL NO
          Container(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
            child: TextField(
              controller: rollNo,
              decoration: InputDecoration(
                  labelText: 'Roll no',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
                  filled: true),
            ),
          ),
          // FIELD TO ENTER PASSWORD
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextField(
              controller: passWord,
              decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
                  filled: true),
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
    );
  }
}
