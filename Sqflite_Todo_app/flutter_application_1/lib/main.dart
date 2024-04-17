import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart';
import 'package:flutter_application_1/to_do_app.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


dynamic database;



// Future<List<ToDoModelClass>> getOrderData()async {
//   final localDB= database;
//   List<Map<String,dynamic>>orderMap=await localDB.query("OrderFood");
  
//   return List.generate(orderMap.length,(i){
//     return ToDoModelClass(
//       custName: orderMap[i]['orderNo'], 
//      hotelName: orderMap[i]['custName'], 
//      food: orderMap[i]['food'], 
//      bill: orderMap[i]['bill']
//      );

//   });
// }
void main() async{
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();

 database = openDatabase(
  join(await getDatabasesPath(),"TodoDatabase.db"),
  version: 1,
  onCreate: (db,version) async {
    await db.execute(
      '''
      CREATE TABLE ToDoModelClass(
       title String PRIMARY KEY,  Description String, Date String, isChecked bool) 
      '''
    );
  }
 );
  // ToDoModelClass card1 = ToDoModelClass(jerNo: 18, name: "virat", runs: 500000, avg: 50.53);
  //   insertPlayerData(card1);
 
//  Player batsman2 = Player(jerNo: 45, name: "Rohit", runs: 400000, avg: 40.53);
//  insertPlayerData(batsman2);

// Player batsman3 = Player(jerNo: 77, name: "Shubmann Gill", runs: 300000, avg: 30.53);
// await insertPlayerData(batsman3);
// print(await getPlayerData());
// print("hi");
// }



}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ToDo APP',
      debugShowCheckedModeBanner: false,
      home: ToDoApp(),
    );
  }
}
