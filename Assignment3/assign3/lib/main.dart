import 'package:flutter/material.dart';
import 'package:flutter_stateful_ass_1/assignment3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment3(),
    );    
  }
}

