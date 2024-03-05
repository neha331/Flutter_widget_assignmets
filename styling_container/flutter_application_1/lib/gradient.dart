import 'package:flutter/material.dart';
//import 'package:flutter_application_1/decoration.dart';
//padding
class Statement8 extends StatelessWidget {
  const Statement8({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color:Colors.yellow,
              width: 5,
              ),
            gradient:const LinearGradient(
              stops:[0.3,0.5],
              colors:[ Colors.red,Colors.green]
              )   
            ),
            child:const  Text('Gradient'),
        ),
        
    );
  
  }
}