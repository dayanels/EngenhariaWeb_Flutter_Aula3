// ignore_for_file: prefer_const_constructors

import 'package:aula3/screen/drawer/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      drawer: MyDrawer(),
    );
  }
}
