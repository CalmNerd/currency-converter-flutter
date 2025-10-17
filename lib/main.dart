import 'package:currency_convertor/home.dart';
import 'package:currency_convertor/tetachings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()
      // home: Tetachings()
    );
  }
}
