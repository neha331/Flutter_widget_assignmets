import 'package:flutter/material.dart';
import 'package:flutter_application_1/border_radius.dart';
//padding
class Statement6 extends StatelessWidget {
  const Statement6({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color:Colors.green,
              width: 5,
            ),
            boxShadow :const [
             BoxShadow (
              color:Colors.purple, offset:Offset(30,30),blurRadius:8),
            
            BoxShadow (
              color:Colors.red, offset:Offset(30,30),blurRadius:8),
           
            BoxShadow (
              color:Colors.green, offset:Offset(30,30),blurRadius:8),
           
            ]
           ),
           child:const Text('box_shadow')
        ),
        floatingActionButton:FloatingActionButton(
              onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const Statement7()),
               );
            },
            child:const Text('next'),
            ),
    );
  
  }
}