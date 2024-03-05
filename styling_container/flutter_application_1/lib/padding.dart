import 'package:flutter/material.dart';
import 'package:flutter_application_1/padding2.dart';
//padding
class Statement2 extends StatelessWidget {
  const Statement2({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          height: 200,
          width: 200,
          color:Colors.grey,
          padding: const EdgeInsets.symmetric(
           horizontal:20,
           vertical:20,
         ),
         child:const Text('Padding=> horizontal:20 ,vertical:20')    
      ),
      floatingActionButton:FloatingActionButton(
              onPressed: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const Statement3()),
               );
            },
            child:const Text('Next'),
            ), 
    );
  
  }
}