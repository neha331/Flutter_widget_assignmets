import "package:flutter/material.dart";

class Statement10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Hello Core2Web"),
      ),
      body:Center(
        child: Container(
          height:300,
          width:300,
            decoration: 
            const BoxDecoration(
                   color:Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                  ),
         )
       )
       
     )
      );
  }

}