//height and width
import 'package:flutter/material.dart';
import 'package:flutter_application_1/padding.dart';


class Statement1 extends StatelessWidget {
  const Statement1({super.key});
  @override

  Widget build(BuildContext context){
    return Scaffold(
       body:Container(
          height: 200,
          width: 200,
          color:Colors.red,
          child:const Text('height and width'),
       ) ,
       floatingActionButton:FloatingActionButton(
              onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const Statement2()),
               );
            },
            child:const Text('next'),
            ),      
   );
  }   
}   