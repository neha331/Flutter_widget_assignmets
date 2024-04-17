// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart' ;


// class Player {
//   final int jerNo;
//   final String name;
//   final int runs;
//   final double avg;

//   Player({
//     required this.jerNo,
//     required this.name,
//     required this.runs,
//     required this.avg,
//   });

//   Map<String, dynamic> playerMap(){
//     return{
//       'name':name,
//       'jerNo':jerNo,
//       'runs':runs,
//       'avg':avg
//     };
//   }
//   @override
//   String toString(){
//     return '{name:$name,jerNo:$jerNo, runs:$runs, avg:$avg}';
//   }
  
// }

// Future insertPlayerData(Player obj) async{
//     final localDB= database;
//     await localDB.insert(
//       "Player",
//       obj.playerMap(),
//       ConflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }
//   Future<List<Player>> getPlayerData() async{
//     final localDB= await database;

//     List<Map<String, dynamic>> listPlayers = await localDB.query("Player");
//      return List.generate(listPlayers.length, (i) {
//       return Player(
//         name:listPlayers[i]['name'],
//         jerNo:listPlayers[i]['jerNo'],
//         runs:listPlayers[i]['avg'],
//         avg:listPlayers[i]['avg'],
//       );
//      });
//   }

// dynamic database;
// void main()async{
//  WidgetsFlutterBinding.ensureInitialized();
// print("hi");
//  database = openDatabase(
//   join(await getDatabasesPath(),"PllayerDB.db"),
//   version: 1,
//   onCreate: (db,version) async {
//     await db.execute(
//       '''
//       CREATE TABLE Player(jerNo INTEGER PRIMARY KEY, name TEXT, runs INT, avg REAL) 
//       '''
//     );
//   }
//  );

//  Player batsman1 = Player(jerNo: 18, name: "virat", runs: 500000, avg: 50.53);
//    insertPlayerData(batsman1);
 
//  Player batsman2 = Player(jerNo: 45, name: "Rohit", runs: 400000, avg: 40.53);
//  insertPlayerData(batsman2);


// Player batsman3 = Player(jerNo: 77, name: "Shubmann Gill", runs: 300000, avg: 30.53);
// await insertPlayerData(batsman3);

// print(await getPlayerData());
// print("hi");

// } 

