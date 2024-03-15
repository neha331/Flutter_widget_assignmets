import 'package:flutter/material.dart';
import 'package:flutter_application_1/to_do_app.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'ToDo APP',
      debugShowCheckedModeBanner :false,
      home:ToDoApp(
      ),
    );
  }
}


