import 'package:flutter/material.dart';
import 'generator.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(19, 19, 214, 1.0)),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/generator': (context) => Generator(),
      },
    ),
  );
}
