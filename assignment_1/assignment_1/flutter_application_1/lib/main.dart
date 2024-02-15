import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.deepPurple),
        useMaterial3:true,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('Simple Text Example'),
        ),
        body:const Center(
          child: Text('Core2Web', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 48, 157, 36),
            ),),
          
        )
      )
    );    
  }
}

