import 'package:aula3/screen/home_screen.dart';
import 'package:aula3/store/my_drawer_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  initializeSingleton();
  runApp(MaterialApp(
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurpleAccent)), // flutter 3.0.0
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

void initializeSingleton() {
  GetIt.I.registerSingleton(MyDrawerStore());
}
