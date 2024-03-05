

import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<StatefulWidget> createState() => _QuizAppState();
  

}
class SingleQuestionMode {
 final  String? question;
 final  List<String>? options;
 final  int?  answerIndex;
  
  const SingleQuestionMode({this.question, this.options, this.answerIndex});
}
 
class _QuizAppState extends State<QuizApp> {
  List allQuestions = [
    const SingleQuestionMode(
      question: "What is Flutter ?",
      options: ["Python web framework","version control system", "open-source UI framework", "IDE for Java development"],
      answerIndex: 2,
    ),
    const SingleQuestionMode(
      question: "Which programming language is primarily used for Flutter app development ?",
      options: ["JavaScript","Python", "Dart", "Kotlin"],
      answerIndex: 2,
    ),
     const SingleQuestionMode(
      question: "Which of the following is NOT a widget in Flutter ?",
      options: ["Scaffold","FlexBox", "ListView", "MaterialApp"],
      answerIndex: 1,
    ),
     const SingleQuestionMode(
      question: "Which widget is used to create a scrollable list in Flutter?",
      options: [" MultiChildScrollView", "Column", "Scrollbar", "ListView"],
      answerIndex: 3,
    ),
     const SingleQuestionMode(
      question: "What is the purpose of the setState function in Flutter?",
      options: ["connect to the internet","configure the settings of the app", "set the application's initial state", "To update widget’s state and redraw the widget"],
      answerIndex: 3,
    ),
      
  ];

  bool questionScreen = true;
  int questionIndex=0;
  int selectedAnswerIndex =- 1;
  int noOfCorrectAnswers=0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex){
    if(selectedAnswerIndex != -1){
      if (buttonIndex == allQuestions[questionIndex].answerIndex){
        return const MaterialStatePropertyAll(Colors.green);
      }else if (buttonIndex == selectedAnswerIndex){
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(null);
      }
    }else {
      return const MaterialStatePropertyAll(null);
    }
  }
  void validateCurrentPage(){
    if(selectedAnswerIndex == -1){
      return;
    }
    if(selectedAnswerIndex == allQuestions[questionIndex].answerIndex){
      noOfCorrectAnswers += 1;
    }
    if(selectedAnswerIndex!= -1){
      if(questionIndex == allQuestions.length-1){
        setState(() {
          questionScreen=false;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex +=1;
      });
    }
  }

  Scaffold isQuestionScreen (){
    if (questionScreen == true){
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "QuizApp",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color:Colors.orange,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height:25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Questions:",
                 style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  )
              ),
              Text(
                "${questionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.w600,
                )
              ),
            ],
          ),
          const SizedBox(
            height:50,
          ),
          SizedBox(
          width:400,
          height:70,
          child: Center(
            child: Text(allQuestions[questionIndex].question,
             style: const TextStyle(
               fontSize: 23,
               fontWeight:FontWeight.w400,
            ),
                    ),
          ),
        ),
        const SizedBox(
          height:30,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(0),
            fixedSize: MaterialStateProperty.all(const Size(500, 50)),
          ),
          onPressed:(){
               if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =0;
                });
               }
          }, 
          child: Text(
            "A.${allQuestions[questionIndex].options[0]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
        const SizedBox(
          height:20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(1),
            fixedSize: MaterialStateProperty.all(const Size(500, 50)),
           // maximumSize: MaterialStateProperty.all(const Size(300, 30)),
          ),
          onPressed:(){
            if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =1;
                });
               }
          }, 
          child: Text(
            "B.${allQuestions[questionIndex].options[1]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
        const SizedBox(
          height:20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(2),
            fixedSize: MaterialStateProperty.all(const Size(500, 50)),
          ),
          onPressed:(){
               if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =2;
                });
               }
          },  child: Text(
            "C.${allQuestions[questionIndex].options[2]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
        const SizedBox(
          height:20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(3),
            fixedSize: MaterialStateProperty.all(const Size(500, 50)),
          ),
          onPressed:(){
               if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =3;
                });
               }
          }, child: Text(
            "D.${allQuestions[questionIndex].options[3]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
        const SizedBox(
          height:20,
        ),
           
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          validateCurrentPage();
        },
        backgroundColor: Colors.blue,
        child:const Icon(
          Icons.forward,
          color:Colors.orange,
        ),
      ),    
    );
   } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("quizapp",
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                )
          ),
        ),
        body: Column(
          //mainAxisAlignment:MainAxisAlignment.center ,
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
        
          children: [
            const SizedBox(
              height:30,  
             // width: 20,    
            ),
            Image.network(
              "https://as1.ftcdn.net/v2/jpg/05/42/46/32/1000_F_542463204_8CVR0aTvqQtldDeqaqPKWAWlNBiDtEvr.jpg",
              height: 400,
               alignment: Alignment.center,
              width: 900,
            
            ),
            const Text("Congraturations",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
            ),
            ),
            const SizedBox(height:15),
            const Text("You have completed the Quiz",
            style:TextStyle(fontSize:23,
            fontWeight: FontWeight.w500
            ),
            ) ,
            const SizedBox(height:15),
            Text("$noOfCorrectAnswers/${allQuestions.length}"),
            ElevatedButton(onPressed: (){
              questionIndex=0;
              questionScreen=true;
              noOfCorrectAnswers=0;
              selectedAnswerIndex = -1;
              setState((){});
            },
            child:const Text(
              "Reset",
              style:TextStyle(
                fontSize:20,
                fontWeight:FontWeight.normal,
                color: Colors.orange, 
              )
            ),
            )
          ]
        ),
      );
    }
    
             
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return isQuestionScreen();
  }
  }
