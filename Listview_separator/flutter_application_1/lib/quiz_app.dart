

import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<StatefulWidget> createState() => _QuizAppState();
  

}
// class Player {
//  final  String? question;
//  final  List<String>? options;
//  final  int?  answerIndex;
  
//   const SingleQuestionMode({this.question, this.options, this.answerIndex});
// }
 
class _QuizAppState extends State<QuizApp> {
  // List PlayerList = [
  //   const Player(
  //     options: ["Python web framework","version control system", "open-source UI framework", "IDE for Java development"],
      
  //   ),
  //   const Player(
  //     options: ["JavaScript","Python", "Dart", "Kotlin"],
  //   ),
  //    const Player( 
  //     options: ["Scaffold","FlexBox", "ListView", "MaterialApp"],
  //   ),
  // ];
  // List<Map> playerList = [
  //     {
  //     "Options": ["https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg" ,"https://wallpapers.com/images/hd/virat-kohli-in-sunglasses-yc8dfpcjssp3s4se.jpg"],
  //     },
  
  //    {
  //    "options": ["https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg","https://wallpapers.com/images/hd/virat-kohli-in-sunglasses-yc8dfpcjssp3s4se.jpg"],
  //    },
  //    {
  //    "options": ["https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg","https://wallpapers.com/images/hd/virat-kohli-in-sunglasses-yc8dfpcjssp3s4se.jpg"],
  //    },
  //  ];
     Map<String, List<String>> playerList = {
    "Test": ["https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg", "https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg"],
    "T20": ["https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg", "https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg"],
    };

   List<String> _flattenImageList(List<Map> playerList) {
    List<String> images = [];
    for (var entry in playerList) {
      images.addAll(entry["options"]);
    }
    return images;
   }
   
   void processPlayerImages(Map<String, List<String>> playerList) {
  // Iterate through each key-value pair in the map
  playerList.forEach((category, images) {
    // Iterate through each image URL in the list
    for (String imageUrl in images) {
      // Here you can process each image URL as needed
      // For example, printing each URL
      print('Category: $category, Image: $imageUrl');
    }
  });
}
  @override
  Widget build(BuildContext context) {
    //List<String> images = _flattenImageList(playerList);
    List<String> allImages = playerList.values.expand((images) => images).toList();
      return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Demo ",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color:Colors.orange,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:ListView.separated(
        itemBuilder: (BuildContext context, int index){
          return Container(
            height:200,
            width:200,
            margin: const EdgeInsets.all(10),
            //child: Image.network(images[index], fit: BoxFit.cover),
            child: Image.network(allImages[index], fit: BoxFit.cover),
          );
        },
        itemCount: playerList.length,
        separatorBuilder: (BuildContext context, int index){
          return const Text("----");
        }  ,
      )
    );
  }
}

