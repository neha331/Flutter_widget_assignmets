import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  Widget build(BuildContext context){
    return const MaterialApp(
        home:TextFieldDemo(
          title: 'Flutter Demo'
        ),
        debugShowCheckedModeBanner: false,
      );
  }
}      

class TextFieldDemo extends StatefulWidget{
  const TextFieldDemo({super.key, required this.title});
  final String title;
  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
  
}

class _TextFieldDemoState extends State<TextFieldDemo>{
 TextEditingController nameController = TextEditingController();
 //vegla aahe nullable type cha nahi tyamule ? nahi chalat
 // TextEditingController nameController = TextEditingController();

 void _printData(){
  print('companyName:${nameController.text}');
 }
  void initState(){
    super.initState();
    //nameController.addListener(_printData);//dudaarikade vapru naye _
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("TextFieldDemo"),
        centerTitle:true,
        backgroundColor: Colors.blue,
      ),
      body:Column(
        children: [
          const SizedBox(
            height:30,
          ),
          TextField(
            controller: nameController,//const chalat nahi
            showCursor: true,
            decoration:const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              hintText:('enter company Name'),
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value){
              print("onchanges :$value");
            },
            onSubmitted: (value){
              print("onsubmitted :$value");
            }
          ),
          const TextField()
       ],
      )
    );
  }
}
  