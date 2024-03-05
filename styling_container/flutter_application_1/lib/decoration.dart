import 'package:flutter/material.dart';
import 'package:flutter_application_1/box_shadow.dart';
//import 'package:flutter_application_1/box_shadow.dart';
//padding
class Statement5 extends StatelessWidget {
  const Statement5({super.key});
  
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
           ),
           child:const Text('decoration'),
        ),
        floatingActionButton:FloatingActionButton(
              onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const Statement6()),
               );
            },
            child:const Text('next'),
            ), 
    );
  
  }
}