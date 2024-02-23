import "package:flutter/material.dart";
import "package:flutter_application_9/statement_5.dart";

class Statement3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Hello Core2Web"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text( 'output of STATEMENT 3 AND 4', style:TextStyle(color: Colors.black), ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width:360,
                        color:Colors.blue,
                      ),
                      SizedBox(height:20,width:20),
                      Container(
                        height: 200,
                        width:360,
                        color:Colors.blue,
                      ),   
                ],
              ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                            child: Text('go to the statement 5'),
                            onPressed: () {
                               Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Statement5()),
                               );
                           },
                      ),
                    ],
                  ),
        ],
      ),
        );
  }

}