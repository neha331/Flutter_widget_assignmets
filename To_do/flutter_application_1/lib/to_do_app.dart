import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  @override
  State createState()=> _ToDoAppState();
}

class _ToDoAppState extends State {

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController =TextEditingController();
  TextEditingController dateController = TextEditingController();

 // bool doedit =false;

  void showBottomSheetFun(bool doedit,[ToDoModelClass?  toDoModelObj]){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
       builder: (BuildContext context){
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('create Task',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w800,
                  fontSize: 22
                ),
              ),
              const SizedBox(
                height:20,
              ),
              Column(
                children: [
                  Text('title',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                 ),
                 const SizedBox(
                   height:10,
                 ),
                 TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    border:OutlineInputBorder(
                       borderRadius:BorderRadius.all(Radius.circular((10)))
                    ),
                  ),
                 ),
                 Text('Description',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                 ),
                 const SizedBox(
                   height:10,
                 ),
                 TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    border:OutlineInputBorder(
                       borderRadius:BorderRadius.all(Radius.circular((10)))
                    ),
                  ),
                 ),
                 Text('Date',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                 ),
                 const SizedBox(
                   height:10,
                 ),
                 TextField(
                  controller: dateController,
                  decoration: const InputDecoration(
                    border:OutlineInputBorder(
                       borderRadius:BorderRadius.all(Radius.circular((10)))
                    ),
                    suffixIcon: Icon(
                      Icons.calendar_month,
                      color:Color.fromRGBO(5, 106, 156, 1),
                     
                    ),
                  ),
                  readOnly: true,
                  onTap: ()async {
                    DateTime? pickeDate= await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024), 
                      lastDate: DateTime(2025), 
                    );
                    String formatedDate =DateFormat.yMMMd().format(pickeDate!);
                    setState(() {
                      dateController.text=formatedDate;
                    });
                  },
                 ),
                ],
              ),
              const SizedBox(
                height:10,
              ),
              ElevatedButton(
               style: const ButtonStyle(
                backgroundColor:MaterialStatePropertyAll(Color.fromRGBO(5, 106, 156, 1))
               ), 
               onPressed: (){
                 doedit? submit(doedit,toDoModelObj):submit(doedit);
                 Navigator.of(context).pop();
               },
               child:const  Text('Submit',style: TextStyle(color: Colors.white), )
              ),
          ]
          ),
        );
       }
    );
  }
   void submit(bool doedit,[ToDoModelClass? toDoModelObj]){
   if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
    if(!doedit){
      setState((){
        cardList.add(
          ToDoModelClass(
           title: titleController.text.trim(),
           description: descriptionController.text.trim(), 
           date: dateController.text.trim()
          )
        );
      });
    }else{
      setState(() {
        toDoModelObj!.date= dateController.text.trim();
        toDoModelObj!.title= titleController.text.trim();
        toDoModelObj!.description= descriptionController.text.trim();
      });
    }
   }
   clearController();
   }
   void clearController(){
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
    }
    void removeTasks(ToDoModelClass toDoModelObj){
      setState((){
           cardList.remove(toDoModelObj);
      });
    }
    void editTask(ToDoModelClass toToModelObj){
       titleController.text =toToModelObj.title;
       descriptionController.text = toToModelObj.description;
       dateController.text = toToModelObj.date;
       showBottomSheetFun(true,toToModelObj );
   }
   @override
   void dispose(){
    super.dispose();
      titleController.dispose();
      dateController.dispose();
      descriptionController.dispose();    
   }

   var listOfColors=[
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
   ];
  
  List<ToDoModelClass> cardList= [
    ToDoModelClass(
      title:"Attain meeting",
      description:"attain meeting",
      date:"march 3 2024",
    ),
  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'ToDoApp',
        ),
        centerTitle:true,
        backgroundColor: const Color.fromRGBO(5, 106, 156, 1),
      ),
      body:ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, index) {
          return  Padding(
            padding:const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child:Container(
              height:112,
              width:330,
              decoration: BoxDecoration(
                border: Border.all(
                  width:2,
                  color:const Color.fromRGBO(0,0,0,1),
                ),
                boxShadow: [
                  BoxShadow(
                    offset:const  Offset(10, 10),
                    color:listOfColors[index % listOfColors.length],
                    blurRadius: 5,
                  ),
                ]
              ),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      //Row1
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration:const BoxDecoration(
                            shape:BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color:Color.fromRGBO(0,0,0,0.7),
                              ),
                            ],
                          ),
                          child:Image.network("https://cdn-icons-png.freepik.com/256/8214/8214984.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cardList[index].title,
                               style:GoogleFonts.quicksand(
                                 fontWeight:FontWeight.w600,
                                 fontSize: 14,
                               ),
                            ),
                            const SizedBox(
                              height:10,
                            ),
                            Text(
                              cardList[index].description,
                              style:GoogleFonts.quicksand(
                                fontWeight:FontWeight.w600,
                                 fontSize: 12,
                              )
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height:5),
                    Row(
                      //row 2
                      children: [
                         Text(cardList[index].date,
                            style:GoogleFonts.quicksand(
                                fontWeight:FontWeight.w500,
                                 fontSize: 14,
                            )
                         ),
                         const Spacer(flex: 1,),
                         Row(
                          children: [
                            GestureDetector(
                              child:const Icon(
                                Icons.edit_note_outlined,
                                size:30,
                                color:Color.fromRGBO(5, 106, 156, 1)
                              ),
                              onTap: () {
                                 editTask(cardList[index]);
                              }
                            ),
                            GestureDetector(
                              child:const Icon(
                                Icons.delete_outlined,
                                size:30,
                                color:Color.fromRGBO(5, 106, 156, 1)
                              ),
                              onTap: () {
                                removeTasks(cardList[index]);
                              },
                            ),
                          ],
                         )
                      ],
                    )
                  ],
                ),
              )
            )
          );
        },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            clearController();
            showBottomSheetFun(false);
          },
          backgroundColor:const Color.fromRGBO(5, 106, 156, 1),
          child:const Text(
            'Add'
          ),
        ),
    );
  }

}
