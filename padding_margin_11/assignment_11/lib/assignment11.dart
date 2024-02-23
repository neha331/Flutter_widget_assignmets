import 'package:flutter/material.dart';



class Assignment11 extends StatelessWidget {
  const Assignment11({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("padding and margin"),
      centerTitle: true,
    ),
    body: Center(
      child: Container(
        color:Colors.blue,
        child:Container(
          height: 250,
          width: 250,
          color:Colors.amber,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(30),
          child: 
          Image.network("https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg"),
        )
      )
    ),
  );
}
}