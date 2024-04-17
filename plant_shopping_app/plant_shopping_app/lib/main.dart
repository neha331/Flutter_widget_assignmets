import 'package:flutter/material.dart';
import 'package:plant_shopping_app/view/home_screen.dart';
import 'package:plant_shopping_app/view/login_screen.dart';
import 'package:plant_shopping_app/view/plants.dart';
import 'package:plant_shopping_app/view/verification_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Plants(),
      
    );
  }
}

