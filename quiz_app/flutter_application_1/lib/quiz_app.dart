// import 'package:flutter/material.dart';

// class QuizApp extends StatefulWidget{
//   const QuizApp({super.key});

//   @override
//   State<StatefulWidget> createState() => _QuizAppState();
   
// }
// class SingleQuestionMode {
//  final  String? question;
//  final List<String>? options;
//  final int? answerIndex;

//  const SingleQuestionMode({
//   this.question,
//   this.options,
//   this.answerIndex,
//  });
// }

 
// class _QuizAppState extends State<QuizApp>{
//   List allQuestions = [
//     const SingleQuestionMode(
//       question: "What is Flutter ?",
//       options: ["Python web framework","version control system", "open-source UI SDK", "IDE for Java development"],
//       answerIndex: 2,
//     ),
//   ];
//   int questionScreen = 1;
//   int queNum=0;
//   int selectedAns=-1;

//   MaterialStateProperty<Color?>? checkAnser(int index){
//     if(selectedAns== -1){
//       return null;
//     }else{
//       if(index==allQuestions[queNum].answerIndex){
//         if(selectedAns!=-1){
//          return MaterialStatePropertyAll(Colors.green);
//         }
//         else if (selectedAns!=-1 && ){
//           return null;
//         } 
//       }else{
//         return MaterialStatePropertyAll(Colors.red);
//       }
//     }
//   }
  
//   Scaffold validateScreen(){
//     if(questionScreen ==1){
//      return  Scaffold(
//         body:ElevatedButton(
//           onPressed: (){
//             setState(() {
//               questionScreen++;
//             });
//           },
//            child: const Text('Start')
//         )
//     );
//     }
//     else if(questionScreen ==2){
//       return Scaffold(
//         body:Column(
//           children: [
//             SizedBox(
//               height: 20,
//               width:50,
//               child:Text(
//                 '${allQuestions[queNum].question}'
//               )
//             ),
//             const SizedBox(
//               height:10,
//             ),
//             ElevatedButton(
//               style:ButtonStyle(
//                 backgroundColor: checkAnser(0),
//               ),
//               onPressed: (){
//                 if(selectedAns==-1){
//                  setState(() {
//                    selectedAns=0;
//                  });
//                 }
                
//               }, 
//               child: Text(allQuestions[queNum].options[0]),
//             ),
//             const SizedBox(
//               height:10,
//             ),
//             ElevatedButton(
//               style:ButtonStyle(
//                 backgroundColor: checkAnser(1),
//               ),
//               onPressed: (){
//                 if(selectedAns==-1){
//                   setState(() {
//                     selectedAns=1;
//                   });
//                   selectedAns=1;
//                 }
//               }, 
//               child: Text(allQuestions[queNum].options[1]),
//             ),
//             const SizedBox(
//               height:10,
//             ),
//             ElevatedButton(
//               style:ButtonStyle(
//                 backgroundColor: checkAnser(2),
//               ),
//               onPressed: (){
//                 if(selectedAns==-1){
//                   setState((){
//                     selectedAns=2;
//                   });
//                 }
//               }, 
//               child: Text(allQuestions[queNum].options[2]),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: (){
//           setState(() {
//             questionScreen+1;
//           });
//         }),
//       );
//     }else return Scaffold(
//       body:Column(
//         children: [
//           const Text('congratulations'),
//         ],
//       )
//     ); 
//   }

//   @override
//   Widget build(BuildContext context) {
//     return validateScreen();
//   }

// }