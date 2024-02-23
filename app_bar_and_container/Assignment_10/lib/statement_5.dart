import "package:flutter/material.dart";
import "package:flutter_application_9/statement6.dart";

class Statement5 extends StatelessWidget {
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
       
        Column(      
             mainAxisAlignment: MainAxisAlignment.center,
             
            children: [
              const Text( 'output of STATEMENT 5', style:TextStyle(color: Colors.black), ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Image.asset('assets/images/image1.jpg', height:150, width:150),
              SizedBox(height: 20,width:20),
              Image.asset('assets/images/image2.jpg', height:150, width:150),
              SizedBox(height: 20,width:20),
              Image.asset('assets/images/image3.jpg', height:150, width:150),
              SizedBox(height: 20,width:20),
              ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
             
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Statement6() ));
                      
                    },             
                   child: Text('go to statement 6'),),
                ],
              )          
            ],
                   ),
         

  
    );
  }

}