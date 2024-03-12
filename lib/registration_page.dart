// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        title: Text('Registration'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ENTER YOUR NAME HERE
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
              child: TextField(
                controller: name,
                decoration: InputDecoration(labelText: 'Enter your name here'),
              ),
            ),
            // ENTER ROLL NUMBER HERE
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: TextField(
                controller: eMail,
                decoration: InputDecoration(labelText: 'Enter your roll number'),
              ),
            ),
            // ENTER EMAIL HERE
            Container(
              decoration: BoxDecoration(color: Colors.red),
              child: TextField(
                decoration: InputDecoration(labelText: 'Enter your email'),
              ),
            ),
            // ENTER PASSWORD HERE
            Container(
              decoration: BoxDecoration(color: Colors.orange),
              child: TextField(
                decoration: InputDecoration(labelText: 'Enter your password'),
              ),
            ),
            // BUTTON TO REGISTER
            Container(
              decoration: BoxDecoration(color: Colors.red),
              child: TextButton(
                onPressed: null,
                child: Text('Register'),
              )
            ),
          ],
        ),
      ),
    );
  }
}
