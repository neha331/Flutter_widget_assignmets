import "package:flutter/material.dart";
import 'package:flutter_application_9/Statement7.dart';
import 'package:flutter_application_9/statement10.dart';
import 'package:flutter_application_9/statement3_4.dart';
import 'package:flutter_application_9/statement6.dart';
import 'package:flutter_application_9/statement8_9.dart';
import 'Statement1_2.dart';
import 'package:flutter_application_9/statement_5.dart';
import "package:flutter_application_9/Statement1_2.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return   MaterialApp(
      home: Statement1(),
      debugShowCheckedModeBanner:false,
    );
  }

}