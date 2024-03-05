import 'package:flutter/material.dart';
import 'package:flutter_application_1/margin.dart';
//import 'package:flutter_application_1/decoration.dart';
//padding
class Statement3 extends StatelessWidget {
  const Statement3({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Container(
          color:Colors.blue,
          padding: const EdgeInsets.only(
           left:20, right:10,top:40, bottom:10,
          ),
          height: 200,
          width: 200,
          child:const Text('Padding=>  left:20, rigt:10, top:40, bottom: 10')
        ),
        floatingActionButton:FloatingActionButton(
              onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const Statement4()),
               );
            },
            child:const Text('next'),
            ), 
    );
  
  }
}