import 'package:flutter/material.dart';
import 'contohfollower.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS PEMROGRAMAN BERGERAK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Contohfollower(),
    );
  }
}