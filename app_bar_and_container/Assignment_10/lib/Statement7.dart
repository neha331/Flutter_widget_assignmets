import "package:flutter/material.dart";
import "package:flutter_application_9/statement8_9.dart";

class Statement7 extends StatelessWidget {
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

          SizedBox(height: 500,width:100,child: Image.network("https://kinsta.com/wp-content/uploads/2020/08/tiger-jpg.jpg",fit: BoxFit.fill)),
          SizedBox(height: 500,child: Image.network("https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg",fit: BoxFit.fill)),
          SizedBox(height: 500,child: Image.network("https://plus.unsplash.com/premium_photo-1666863911660-d64fc1022c12?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8anBnfGVufDB8fDB8fHww",fit: BoxFit.fill)),
          SizedBox(height: 500,child: Image.network("https://images.unsplash.com/photo-1585468491047-f02d6f7c706c?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.fill)),
          SizedBox(height: 500,child: Image.network("https://images.unsplash.com/photo-1633409361618-c73427e4e206?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8anBnfGVufDB8fDB8fHww",fit: BoxFit.fill)),
          ElevatedButton(
          onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> Statement8())
                );
          },  
          child: const Text("Go to statement 8"),
          )      
        ],
      )
    );
  }

}