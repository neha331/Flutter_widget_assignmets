import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:flutter_application_1/model.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';


class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  @override
  State createState()=> _ToDoAppState();
}

class _ToDoAppState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(111, 81, 255, 1),
         body:Column(
          //mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize:  MainAxisSize.min,
          children: [
            Container(
             // height: 20,
              padding:const EdgeInsets.all(8),
              child:const Text('Good Morning',
                style: TextStyle(
                  color: Color.fromRGBO(88, 84, 84, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
                height:10,
            ),
            Container(
              //height: 10,
              padding: const EdgeInsets.all(8.0),
              child:const Text('Neha',
                style:TextStyle(
                  color: Color.fromRGBO(94, 28, 28, 1),
                  fontSize:25,
                  fontWeight:FontWeight.w600,
                ),
              )
            ),
            const SizedBox(
                height:10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                decoration:const  BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color:Color.fromRGBO(180, 166, 166, 1)
                ),
                child:Column(
                  children: [
                    const Text('Tasks',
                      style:TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize:25,
                        fontWeight:FontWeight.w300,
                      ),
                    ),
                     const SizedBox(
                      height:10
                    ),
                    Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 245, 243),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20)
                    ,topRight: Radius.circular(20)
                  )
                ),
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder:  (BuildContext context, index) {
                    return Slidable( 
                      closeOnScroll: true,
                      endActionPane:ActionPane(
                          extentRatio: 0.2,
                                    motion:const DrawerMotion(),
                                      children:[
                                         Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround, 
                                            children: [
                                              const SizedBox(
                                                height:5,
                                              ), 
                                              GestureDetector(
                                                child:Container(
                                                  child:const Icon(Icons.edit_note_outlined),
                                                )
                                              ),
                                              const SizedBox(
                                                height:5,
                                              ), 
                                              GestureDetector(
                                                child:Container(
                                                  child:const Icon(Icons.delete_outline_outlined),
                                                )
                                              )
                                            ]
                                          )
                                         )
                                      ]
                      ),                                  
                    child:Container(
                         padding: const EdgeInsets.all(8.0),
                         decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color.fromRGBO(154, 115, 115, 1)
                      ),
                                    child:Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Column(
                          children: [
                            Row(
                               children: [
                                 Column(
                                  children: [
                                    Text(
                                      'task',
                                      style: TextStyle(
                                        color: Color.fromRGBO(186, 165, 165, 1),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'task Description',
                                      style: TextStyle(
                                        color: Color.fromRGBO(238, 88, 88, 1),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )
                                    
                                  ],
                                 )
                               ],
                            )
                          ],
                        ),
                      ),
                      ),
                    ),
                
                    );
                  }
                ),
              ),
            )
                  
                  ],
                )
              ),
            ),
          ],    
         )
    );
  }  

}
