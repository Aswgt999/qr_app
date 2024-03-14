// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:qr_app1/scanner_page.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.asset('images/puppy.jpg'),
            ),
            QrImageView(
              data: '1234567890',
              version: QrVersions.auto,
              size: 200.0,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScannerPage()));
                  },
                  child: Text('scan')),
            ),
          ],
        ),
      ),
    );
  }
}
