import 'package:flutter/material.dart';
import 'package:flutter_application_1/decoration.dart';
import 'package:flutter_application_1/gradient.dart';
//padding
class Statement4 extends StatelessWidget {
  const Statement4({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Container(
          color:Colors.pink,
          margin: const EdgeInsets.only(
           left:10, top:10, bottom:10,
          ),
          height: 100,
          width: 100,
          child:const Text('Margin')
        ),
        floatingActionButton:FloatingActionButton(
              onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const Statement5()),
               );
            },
            child:const Text('next'),
            ), 
    );
  
  }
}