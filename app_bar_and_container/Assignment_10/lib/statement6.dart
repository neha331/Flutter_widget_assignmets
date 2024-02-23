import "package:flutter/material.dart";
import "package:flutter_application_9/Statement7.dart";

class Statement6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Hello Core2Web"),
      ),
      body:ListView(
        children: [
          Container(height:100,  color:Colors.blue),
          Container(height:100,  color:Color.fromARGB(255, 46, 55, 13)),
          Container(height:100,  color:Colors.purple),
          Container(height:100,  color:Colors.red),
          Container(height:100,  color:Colors.brown),
          Container(height:100,  color:Colors.orange),
          Container(height:100,  color:Colors.pink),
          Container(height:100,  color:Colors.grey),
          Container(height:100,  color:Color.fromARGB(255, 90, 132, 165)),  
          ElevatedButton(
          
            onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) =>Statement7()),
            );
            },
            child: Text("go to statement 7"),
          ),  
        ]
      )
    );
  }

}