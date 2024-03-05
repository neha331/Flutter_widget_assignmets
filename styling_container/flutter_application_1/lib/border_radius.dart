import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient.dart';
//padding
class Statement7 extends StatelessWidget {
  const Statement7({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              color:Colors.blue,
              width: 5,
              ), 
           ),
           child:const Text('border Radius'),
        ),
        floatingActionButton:FloatingActionButton(
              onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const Statement8()),
               );
            },
            child:const Text('next'),
            ),
    );
  
  }
}