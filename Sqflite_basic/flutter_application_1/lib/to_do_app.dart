// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/main.dart';
// import 'package:flutter_application_1/model.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:sqflite/sqflite.dart';



// Future<void> insertCardData(ToDoModelClass obj)async{
//   final localDB = await database;
//   await localDB.insert(
//     "CardDetails",
//     obj.toDoMap(),
//     conflictAlgorithm:ConflictAlgorithm.replace,
//   );
// }
// Future<List<ToDoModelClass>> getPlayerData() async{
//     final localDB= await database;
//     List<Map<String, dynamic>> listCard = await localDB.query("CardDetails");
//      return List.generate(listCard.length, (i) {
//       return ToDoModelClass(
//         title:listCard[i]['title'],
//         //description:listCard[i]['description'],
//         //date:listCard[i]['date'],
//         //isChecked: listCard[i]['isChecked']
//       );
//      });
//   }
// class ToDoApp extends StatefulWidget {
//   const ToDoApp({super.key});
//   @override
//   State createState()=> _ToDoAppState();
// }

// class _ToDoAppState extends State {
//    //List<ToDoModelClass> retVal =[];
//   final TextEditingController titleController = TextEditingController();
//  // final TextEditingController descriptionController =TextEditingController();
//  // final TextEditingController dateController = TextEditingController();
// } 
 
// //   final _formKey = GlobalKey<FormState>();

  
// //   List<ToDoModelClass> cardList= [
// //     ToDoModelClass(
// //       title:"Attain meeting",
// //       //description:"Attain Meeting regarding new app ",
// //       //date:"Mar 3, 2024",
// //     ),
// //   ];
// //   var listOfColors=[
// //     const Color.fromRGBO(250, 232, 232, 1),
// //     const Color.fromRGBO(232, 237, 250, 1),
// //     const Color.fromRGBO(250, 249, 232, 1),
// //     const Color.fromRGBO(250, 232, 250, 1),
// //    ];

// //   void taskStatus(bool? val, obj){
// //     setState(() {
// //       obj.isChecked= val;
// //       //isChecked=val;
// //     });
// //   }
// //   bool? isChecked= false;
  
// //   Future<void>showBottomSheetFun(bool doedit,[ToDoModelClass?  toDoModelObj])async {
// //     await showModalBottomSheet(
// //       isScrollControlled: true,
// //       shape:const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.only(
// //           topLeft: Radius.circular(20),
// //           topRight: Radius.circular(20),
// //         ),
// //       ),
// //       context: context,
// //        builder: (BuildContext context){
// //         return Padding(
// //           padding: MediaQuery.of(context).viewInsets,
// //           child: Column(
// //             //crossAxisAlignment: CrossAxisAlignment.center,
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               Text('Create Tasks',
// //                 style: GoogleFonts.quicksand(
// //                   fontWeight: FontWeight.w800,
// //                   fontSize: 22
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height:20,
// //               ),
// //               Form(
// //                 key:_formKey,
// //                 child: Column(
// //                 children: [
// //                   Text('title',
// //                     style: GoogleFonts.quicksand(
// //                       fontWeight: FontWeight.w500,
// //                       fontSize: 12,
// //                     ),
// //                  ),
// //                  const SizedBox(
// //                    height:5,
// //                  ),
// //                  TextFormField(
// //                   controller: titleController,
// //                   decoration:  InputDecoration(
// //                     hintText: "Enter Title",
// //                     focusedBorder: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(12),
// //                       borderSide: const BorderSide(
// //                         width: 3.0,
// //                         color:Color.fromRGBO(89,57,241,1)
// //                       )
// //                     ),
// //                     border:const OutlineInputBorder(
// //                        borderRadius:BorderRadius.all(Radius.circular((10))),
// //                     ),
// //                     errorBorder: OutlineInputBorder(
// //                       borderSide: const BorderSide(
// //                         width: 3.0,
// //                         color:Colors.red,
// //                       ),
// //                       borderRadius: BorderRadius.circular(12),
// //                     )
// //                   ),
// //                  ),
// //                  const SizedBox(height:15),
// //                 ],
// //               )
// //               ,),
// //               const SizedBox(
// //                 height:10,
// //               ),
// //               Container(
// //                 height:50,
// //                 width:200,
// //                 margin:const EdgeInsets.all(10),
// //                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
// //                 child: ElevatedButton(
// //                   style:ElevatedButton.styleFrom(
// //                     shape:RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(13),
// //                     ),
// //                     backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
// //                   ),
// //                 //  style: const ButtonStyle(
// //                 //   backgroundColor:MaterialStatePropertyAll(Color.fromRGBO(5, 106, 156, 1))
// //                 //  ), 
// //                  onPressed: (){
// //                    doedit? submit(doedit,toDoModelObj):submit(doedit);
// //                    Navigator.of(context).pop();
// //                  },
// //                  child:const  Text('Submit',style: TextStyle(color: Colors.white), )
// //                 ),
// //               ),
// //           ]
// //           ),
// //         );
// //        }
// //     );
// //   }
// //    void submit(bool doedit,[ToDoModelClass? toDoModelObj])async {
// //    if(titleController.text.trim().isNotEmpty //&& descriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty
// //    ){
// //     if(!doedit){
// //       setState(()async{
// //         // cardList.add(
// //         //   ToDoModelClass(
// //         //    title: titleController.text.trim(),
// //         //    description: descriptionController.text.trim(), 
// //         //    date: dateController.text.trim()
// //         //   )
// //         // );
// //          ToDoModelClass card1 = ToDoModelClass(title: titleController.text.trim());
// //          // description: descriptionController.text.trim(),date: dateController.text.trim());
// //           insertCardData(card1);
// //           retVal = await getPlayerData();
// //           print("jk");
// //           print(retVal[0]);

// //       });
// //     }else{
// //       setState(() {
// //        // toDoModelObj!.date= dateController.text.trim();
// //         toDoModelObj!.title= titleController.text.trim();
// //       //  toDoModelObj.description= descriptionController.text.trim();
// //       });
// //     }
// //    }
// //    clearController();
// //    }
// //    void clearController(){
// //       titleController.clear();
// //      // descriptionController.clear();
// //       //dateController.clear();
// //     }
// //     void removeTasks(ToDoModelClass toDoModelObj){
// //       setState((){
// //            cardList.remove(toDoModelObj);
// //       });
// //     }
// //     void editTask(ToDoModelClass toToModelObj){
// //        titleController.text =toToModelObj.title;
// //      //  descriptionController.text = toToModelObj.description;
// //       // dateController.text = toToModelObj.date;
// //        showBottomSheetFun(true,toToModelObj );
// //    }
// //    @override
// //    void dispose(){
// //     super.dispose();
// //       titleController.dispose();
// //      // dateController.dispose();
// //       //descriptionController.dispose();    
// //    }
// //   @override
// //   Widget build(BuildContext context){
// //     return Scaffold(
// //       backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
// //       body:Padding(
// //         padding: const EdgeInsets.only(
// //           top:100
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Container(
// //               padding:const EdgeInsets.only(left:35),
// //               child: Text(
// //                 "Good Morning",
// //                 style:GoogleFonts.quicksand(
// //                   color:Colors.white,
// //                   fontWeight:FontWeight.w400,
// //                   fontSize:22,
// //                 )
// //               )
// //             ),
// //             const SizedBox(
// //                 height:10,
// //             ),
// //             Container(
// //               padding:const EdgeInsets.only(left:35),
// //               child: Text(
// //                 " Neha",
// //                 style:GoogleFonts.quicksand(
// //                   color:Colors.white,
// //                   fontWeight:FontWeight.w600,
// //                   fontSize:30,
// //                 )
// //               )
// //             ),
// //             const SizedBox(
// //                 height:20,
// //             ),
// //               Expanded(
// //                 child: Container(
// //                   decoration:const BoxDecoration(
// //                     color:Color.fromRGBO(217, 217, 217, 1),
// //                     borderRadius: BorderRadius.only(
// //                       topLeft:Radius.circular(40),
// //                       topRight: Radius.circular(40),
// //                     )
// //                   ),
// //                   width:double.infinity,
// //                   child: Column(
// //                     children: [
// //                       const SizedBox(
// //                         height:30,
// //                       ),
// //                       Text("Tasks",
// //                         style:GoogleFonts.quicksand(
// //                           fontWeight: FontWeight.w500,
// //                           fontSize: 20,
// //                      ),
// //                       ),
// //                      const SizedBox(height:10) ,                   
// //                       Expanded(
// //                         child: Container(
// //                           padding:const EdgeInsets.only(top:20),
// //                           decoration:const BoxDecoration(
// //                             color:Colors.white,
// //                             borderRadius: BorderRadius.only(
// //                               topLeft: Radius.circular(40),
// //                               topRight: Radius.circular(40),
// //                             ),
// //                           ),
// //                           child: ListView.builder(
// //                               itemCount: retVal.length,
// //                               itemBuilder: ((context, index) {
// //                                 return Container(
// //                                   margin: EdgeInsets.all(8.0),
// //                                   color: Colors.blue,
// //                                   child:Text(retVal[index].title,),
// //                                 );
// //                               })
// //                             ),
// //                           ),
// //               ),
// //           ],
// //         ),
// //         ),
// //         ),
// //         ]),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //           onPressed:(){
// //             clearController();
// //             showBottomSheetFun(false);
// //           },
// //           backgroundColor:const Color.fromRGBO(5, 106, 156, 1),
// //           child:const Icon(
// //             size:50,
// //             Icons.add,
// //             color:Colors.white,
// //           ),
// //           ),
// //       );


// //   }

// // }
