import 'package:flutter/material.dart';

class Tetachings extends StatelessWidget {
  const Tetachings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tetachings', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text('Tetachings'),
        ],
      ),
    );
  }

}