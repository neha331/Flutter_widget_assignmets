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
      options: ["Python web framework","version control system", "open-source UI SDK", "IDE for Java development"],
      answerIndex: 2,
    ),
    const SingleQuestionMode(
      question: "Which language is used for Flutter app development?",
      options: ["JavaScript","Python", "Dart", "Kotlin"],
      answerIndex: 2,
    ),
     const SingleQuestionMode(
      question: "Which of the following is NOT a widget in Flutter?",
      options: ["Scaffold","FlexBox", "ListView", "MaterialApp"],
      answerIndex: 1,
    ),
     const SingleQuestionMode(
      question: "Which widget is used to create a scrollable list in Flutter?",
      options: [" MultiChildScrollView", "Column", "Scrollbar", "ListView"],
      answerIndex: 3,
    ),
     const SingleQuestionMode(
      question: "What feature accelerates UI updates in Flutter?",
      options: ["Hot reload","Quick sync", "Live preview", "widget’s Fast refresh"],
      answerIndex: 0,
    ),   
  ];

  int? questionScreen = 1;
  int queNum =0;
  int selectedAnswerIndex =- 1;
  int score=0;
  
  MaterialStateProperty<Color?> checkAnswer(int buttonIndex){
    if(selectedAnswerIndex != -1){
      if (buttonIndex == allQuestions[queNum].answerIndex){
        return const MaterialStatePropertyAll(Colors.green);
      }else if (buttonIndex == selectedAnswerIndex){
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(Color.fromARGB(255, 231, 199, 252));
      }
    }else {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 231, 199, 252));
    }
  }
  void validateCurrentPage(){
    if(selectedAnswerIndex == -1){
      return;
    }
    if(selectedAnswerIndex == allQuestions[queNum].answerIndex){
      score += 1;
    }
    if(selectedAnswerIndex!= -1){
      if(queNum == allQuestions.length-1){
        setState(() {
          questionScreen=3;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        queNum +=1;
      });
    }
  }

  Scaffold isQuestionScreen (){
    if (questionScreen == 1){
      return Scaffold(
      backgroundColor: const Color.fromARGB(255, 92, 31, 178),
      body:Center(
        child: Column(
          children: [
            Image.asset('assets/images/quiz1.jpeg',height: 500.0,),
            ElevatedButton(
              onPressed: (){
               questionScreen=2;
               setState((){});
              }, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                fixedSize: MaterialStateProperty.all(const Size(200, 60)),
              ),
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0, 
                  fontWeight: FontWeight.bold, 
                  letterSpacing: 1.2, 
                ),
              ),
           
            )
          ],
        ),
      )
    );
    }
    else if(questionScreen ==2){
      return Scaffold(
        backgroundColor:const Color.fromARGB(255, 142, 70, 171),
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
         backgroundColor: const Color.fromARGB(255, 90, 6, 120),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
            height:25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Questions:",
                 style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  )
              ),
              Text(
                "${queNum + 1}/${allQuestions.length}",
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
              child: Text("${allQuestions[queNum].question}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                 fontSize: 25,
                 fontWeight:FontWeight.w500,
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
              fixedSize: MaterialStateProperty.all(const Size(300, 60)),
            ),
            onPressed:(){
               if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =0;
                });
              }
            }, 
            child: Text(
              "${allQuestions[queNum].options[0]}",
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
            fixedSize: MaterialStateProperty.all(const Size(300, 60)),
          ),
          onPressed:(){
            if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =1;
                });
            }
          }, 
          child: Text(
            "${allQuestions[queNum].options[1]}",
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
            fixedSize: MaterialStateProperty.all(const Size(300, 60)),
          ),
          onPressed:(){
               if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =2;
                });
              }
          },  child: Text(
          "${allQuestions[queNum].options[2]}",
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
            fixedSize: MaterialStateProperty.all(const Size(300, 60)),
          ),
          onPressed:(){
               if(selectedAnswerIndex == -1){
                setState(() {
                  selectedAnswerIndex =3;
                });
               }
          },
           child: Text(
            "${allQuestions[queNum].options[3]}",
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
    }else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
                "quizapp",
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                )
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height:30,   
            ),
            Text(
              "$score/${allQuestions.length}",
               style:const TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w800,
                color:Color.fromARGB(255, 212, 119, 11),
               ),
            ),
            Image.network(
             "https://media.istockphoto.com/id/1168757141/vector/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition.jpg?s=612x612&w=0&k=20&c=ljsP4p0yuJnh4f5jE2VwXfjs96CC0x4zj8CHUoMo39E=" ,
              height: 300,
              width: 500,
            ),
            const Text(
              "Congraturations !",
              style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height:15),
            const Text(
              "Quiz Completed ",
              style:TextStyle(fontSize:23,
              fontWeight: FontWeight.w500,
              color:Color.fromARGB(255, 212, 119, 11),
            ),
            ) ,
            const SizedBox(height:15),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 127, 32, 134)),
                fixedSize: MaterialStateProperty.all(const Size(100, 50)),
              ),
              onPressed: (){
               queNum=0;
               questionScreen=1;
               score=0;
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
    return isQuestionScreen();
  }
}














