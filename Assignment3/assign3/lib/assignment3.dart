//Assignment 3 : three boxes with button 
import 'package:flutter/material.dart';
import 'package:flutter_stateful_ass_1/main.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("Assignment 3"),
    ),
    body: SizedBox(
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container (
                alignment: Alignment.center,
                  height:50,
                  width: 50,
                  color:Colors.orange,
                  ),
                  ElevatedButton(onPressed: (){}, child: const  Text("Button 1")),
            ]
          ),
          SizedBox(height:20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container (
                alignment: Alignment.center,
                  height:50,
                  width: 50,
                  color:Colors.orange,
                  ),
                  ElevatedButton(onPressed: (){}, child: const  Text("Button 2")),
            ]
          ),
          SizedBox(height:20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container (
                alignment: Alignment.center,
                  height:50,
                  width: 50,
                  color:Colors.orange,
                  ),
                  ElevatedButton(onPressed: (){}, child: const  Text("Button 3")),
            ]
          ),
          SizedBox(height:20),        
              
        ],)
    )

         
    );
}
}