import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Zomato {
  int? orderNo;
  final String custName;
  final String hotelName;
  final String food;
  final double bill;

  Zomato({
    this.orderNo,
    required this.custName,
    required this.hotelName,
    required this.food,
    required this.bill,
  });

  Map<String,dynamic>zomatoMap(){
    return {
    'orderNo':orderNo,
    'custName':custName,
    'hotelName':hotelName,
    'food':food,
    'bill':bill,
    };
  }
  @override
  String toString(){
    return '{orderNo:$orderNo,custName:$custName,hotelName:$hotelName,food:$food,bill:$bill}';
  }
}


dynamic database;
Future<void> insertOrderData(Zomato obj)async{
  final localDB = await database;
  await localDB.insert(
    "OrderFood",
    obj.zomatoMap(),
    conflictAlgorithm:ConflictAlgorithm.replace,
  );
}

Future<List<Zomato>> getOrderData()async {
  final localDB= database;
  List<Map<String,dynamic>>orderMap=await localDB.query("OrderFood");
  
  return List.generate(orderMap.length,(i){
    return Zomato(
      custName: orderMap[i]['orderNo'], 
     hotelName: orderMap[i]['custName'], 
     food: orderMap[i]['food'], 
     bill: orderMap[i]['bill']
     );

  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database= openDatabase(
    join(await getDatabasesPath(),"ZomatoDB.db"),
    version:1,
    onCreate:(db,version)async {
      await db.execute(
        '''
          CREATE TABLE OrderFood(
            orderNo INTEGER PRIMARY KEY,
            custName TEXT,
            hotelName TEXT,
            food TEXT,
            bill REAL
          )
        '''
      );
    }
  );//openDatabase

  Zomato order1=Zomato(custName: "neha",hotelName:"Vedant",bill:500.3,food:"paneer"); 
  await insertOrderData(order1);
}

