// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:qr_app1/scanner_page.dart';
import 'package:qr_app1/simple_page.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            // Image
            CircleAvatar(
              radius: 50,
              child: Image.asset('images/puppy.jpg'),
            ),
            SizedBox(height: 30,),
            // Qr code
            QrImageView(
              data: '1234567890',
              version: QrVersions.auto,
              size: 200.0,
            ),
            SizedBox(height: 20,),
            // scan
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.teal[800], ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SimplePage()));
                },
                child: Text('scan', style: TextStyle(color: Colors.white, fontSize: 18, ),)),
          ],
        ),
      ),
    );
  }
}
