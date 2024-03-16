// ignore_for_file: prefer_const_constructors

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:qr_app1/login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _name = TextEditingController();
  final _rollNo = TextEditingController();
  final _eMail = TextEditingController();
  final _passWord = TextEditingController();

  bool loading = false;

  void register() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'name': _name.text,
          'email': _eMail.text,
          'rollno': _rollNo.text,
          'password': _passWord.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data["message"]);
    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
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
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[400],
        title: Text(
          'Registration',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FIELD TO ENTER NAME
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    hintText: 'Enter your name here',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    filled: true),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // FIELD TO ENTER ROLL NO
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _rollNo,
                decoration: InputDecoration(
                    hintText: 'Enter your roll number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    filled: true),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // FIELD TO ENTER EMAIL
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _eMail,
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    filled: true),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // FIELD TO ENTER NEW PASSWORD
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _passWord,
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    filled: true),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // BUTTON TO REGISTER
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[800], fixedSize: Size(100, 40)),
              onPressed: register,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
