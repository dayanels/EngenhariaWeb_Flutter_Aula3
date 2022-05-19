// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 41, 177, 59),
      ),
    );
  }
}
