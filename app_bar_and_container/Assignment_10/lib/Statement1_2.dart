import 'package:flutter/material.dart';
import 'package:flutter_application_9/statement3_4.dart';


class Statement1 extends StatelessWidget {
  const Statement1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
         "Hello Core2web",
         textDirection: TextDirection.rtl,
        ),
        backgroundColor:Colors.purple,
      ),
      body: Column (
        children: [
          const Text("output of statement 1 and 2",
          style:TextStyle(color: Colors.orange)
         ),
          const Row(
            children: [
              Icon(Icons.download_rounded, size:100),
              SizedBox(width: 200,),
              Icon(Icons.cookie_sharp, size:100),],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  child: Text('Go to the statement 3 and 4'),
                  onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Statement3()),
                     );
                 },
                           ),
            ],
          ),
        ],
        )
    );    
  }
}      