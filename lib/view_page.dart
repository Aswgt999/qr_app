// THE INFORMATION OF SCANNED QR WILL BE PRESENTED HERE

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(radius: 50, child: Image.asset('images/puppy.jpg')),
          Text('Name'),
          Text('flutter developer'),
          Row(
            children: [
              
            ],
          )
        ],
      ),
    );
  }
}
