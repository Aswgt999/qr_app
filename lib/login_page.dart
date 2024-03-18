// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qr_app1/qr_page.dart';
import 'package:qr_app1/registration_page.dart';
import 'package:qr_app1/view_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final rollNo = TextEditingController();
  final passWord = TextEditingController();

  void login() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "rollno": rollNo.text,
          "password": passWord.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data["message"]);
    if (response.statusCode == 200) {


      Navigator.push(
          context, MaterialPageRoute(builder: (context) => QrPage(rollNo:data["rollno"])));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          data["message"],
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ));
    }
  }

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
              style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[600], fixedSize: Size(80, 40)),
              onPressed: login,
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // FOR REGISTERING A NEW ACCOUNT
            RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
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
