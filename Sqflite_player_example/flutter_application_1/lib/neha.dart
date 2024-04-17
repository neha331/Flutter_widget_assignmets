import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' ;

dynamic database;

class Employee{
  final int empId;
  final String name;
  final double sal;

  Employee({required this.empId, required this.name, required this.sal});

  Map<String, dynamic> employeeMap(){
    return {
      'empId':empId,
      'name':name,
      'sal':sal,
    };
  }
  @override
  
  String toString(){
    return '{empId:$empId,name:$name, sal:$sal}';
  }
}
Future<void>insertEmployeeData(Employee emp)async{
  final localDB =await database;
  await localDB.insert(
    'Employee',
    emp.employeeMap(),
    conflictAlgorithm:ConflictAlgorithm.replace,
  );
}
Future<List<Map<String,dynamic>>> getEmployeeData()async{
  final localDB =await database;
  List<Map<String,dynamic>> mapEntry=await localDB.query('Employee');
  return mapEntry;
}
// Future<void>deleteEmpData(Employee emp)async{
//   final localDB=await database;
//   await localDB.delete(
//     'Employee',
//     where:"empId= ?",
//     whereARGS:[emp.empId],
//   );
// }

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  database=openDatabase(
  join(await getDatabasesPath(),"EmployeeDB.db"),
  version: 1,
  onCreate: (db,version) async {
    await db.execute(
      '''
      CREATE TABLE Employee(empId INTEGER PRIMARY KEY, name TEXT, sal REAL)
      '''
    );
  }
 );
 runApp( const MainApp());

 Employee emp1= Employee(empId: 1010,name: 'kanha',sal:1.5);
 await insertEmployeeData(emp1);
 Employee emp2= Employee(empId: 1020,name: 'Rahul',sal:2.5);

 await insertEmployeeData(emp2);

 List<Map<String,dynamic>>retVal= await getEmployeeData();
 for(int i=0; i<retVal.length;i++){
  print(retVal[i]);
 }
//  await deleteEmpData(emp1);
//  print("After Delete");

//  retVal= await getEmployeeData();
//  for(int i=0; i<retVal.length;i++){
//   print(retVal[i]);
//  }


//  Employee emp3= Employee(empId: 101,name: 'Ram',sal:4.5);

//  await insertEmployeeData(emp3);
//  print("inserted new Data");

//  retVal=await getEmployeeData();
//  for(int i=0; i<retVal.length;i++){
//   print(retVal[i]);
//  }
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home:Scaffold(
        body:Center(
          child: Text("Hello"),
      ),
      )
    );
  }
}