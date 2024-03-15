import 'package:flutter/material.dart';

void main(){
 runApp(const WidgetLifecycleDemo());
}

class WidgetLifecycleDemo extends StatefulWidget {
  const WidgetLifecycleDemo({super.key});
  @override
  State createState() =>_WidgetLifecycleState();
}      

class _WidgetLifecycleState extends State<WidgetLifecycleDemo>{
  @override
  void initState (){
    super.initState();  
    print("in init state");
    //return WidgetLi
  }
  void didChangedDipendencies(){
     super.didChangeDependencies();
     print("in did");
  }

  @override
  Widget build(BuildContext context) {
    print("in built function");
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
           body:Column(
           children: [
            Container(
              color:const Color.fromARGB(255, 39, 9, 7),
              margin:const EdgeInsets.all(20),
              child: ElevatedButton(onPressed: (){
                //  initState();
                setState((){
                   print("In setState");
                   
                });
              }, child: Text("in built")),
            ),
           ],
      ),
      ),
    
    );
  }

}