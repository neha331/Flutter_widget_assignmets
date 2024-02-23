import "package:flutter/material.dart";
import "package:flutter_application_9/statement10.dart";

class Statement8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Hello Core2Web"),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text( 'output of STATEMENT 8 AND 9', style:TextStyle(color: Colors.black), ),
            Container(
              height:300,
              width:300, 
              //clipBehavior: Clip.hardEdge,
             // color:Colors.blue,
             decoration:BoxDecoration(
              border:Border.all(color:Colors.red, width: 20),
              borderRadius: BorderRadius.circular(20),
             )
            ),
            ElevatedButton(
             onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> Statement10())
                );
          },  
          child: const Text("Go to statement 10"),
          )
          ],
        ),
                    
          ),
          
        );
  }

}