//height and width
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Statement3.dart';
import 'package:flutter_application_1/statement1.dart';
//import 'package:flutter_application_1/statement2.dart';

void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  Widget build(BuildContext context){
    return const MaterialApp(
      home:Statement1(),     
    );
  }   
}   