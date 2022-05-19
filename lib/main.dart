import 'package:aula3/screen/home_screen.dart';
import 'package:aula3/store/my_drawer_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  initializeSingleton();
  runApp(MaterialApp(home: HomeScreen()));
}

void initializeSingleton() {
  GetIt.I.registerSingleton(MyDrawerStore());
}
