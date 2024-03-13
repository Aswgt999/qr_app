// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qr_app1/login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final name = TextEditingController();
  final rollNo = TextEditingController();
  final eMail = TextEditingController();
  final passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple[200],
        title: Text('Registration'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FIELD TO ENTER NAME
            Container(
              decoration: BoxDecoration(color: Colors.yellow),
              child: TextField(
                controller: name,
                decoration: InputDecoration(labelText: 'Enter your name here'),
              ),
            ),
            // FIELD TO ENTER ROLL NO
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: TextField(
                controller: eMail,
                decoration:
                    InputDecoration(labelText: 'Enter your roll number'),
              ),
            ),
            // FIELD TO ENTER EMAIL
            Container(
              decoration: BoxDecoration(color: Colors.red),
              child: TextField(
                decoration: InputDecoration(labelText: 'Enter your email'),
              ),
            ),
            // FIELD TO ENTER NEW PASSWORD
            Container(
              decoration: BoxDecoration(color: Colors.orange),
              child: TextField(
                decoration: InputDecoration(labelText: 'Enter your password'),
              ),
            ),
            // BUTTON TO REGISTER
            Container(
                decoration: BoxDecoration(color: Colors.green),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Text('Register'),
                )),
          ],
        ),
      ),
    );
  }
}
