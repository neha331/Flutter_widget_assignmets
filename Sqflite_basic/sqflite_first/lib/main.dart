import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' ;

dynamic database;

class Student{
  //final int empId;
  final String name;
  //final double sal;

  Student({
  //required this.empId, 
  required this.name,
  // required this.sal
  });

  Map<String, dynamic> StudentMap(){
    return {
      //'empId':empId,
      'name':name,
      //'sal':sal,
    };
  }
  @override
  
  String toString(){
    return '{name:$name}';
    //return '{empId:$empId,name:$name, sal:$sal}';
  }
}
Future<void>insertStudentData(Student emp)async{
  final localDB =await database;
  await localDB.insert(
    'Student',
    emp.StudentMap(),
    conflictAlgorithm:ConflictAlgorithm.replace,
  );
}
// Future<List<Map<String,dynamic>>> getStudentData()async{
//   final localDB =await database;
//   List<Map<String,dynamic>> mapEntry=await localDB.query('Student');
//   return mapEntry;
// }
Future<List<Student>> getStudentData()async {
  final localDB= database;
  List<Map<String,dynamic>>gtudentMap=await localDB.query("Student");
  
  return List.generate(gtudentMap.length,(i){
    return Student(
      name: gtudentMap[i]['name'], 
     );
  });
}
// Future<void>deleteEmpData(Student emp)async{
//   final localDB=await database;
//   await localDB.delete(
//     'Student',
//     where:"empId= ?",
//     whereARGS:[emp.empId],
//   );
// }

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  database= await openDatabase(
  join(await getDatabasesPath(),"StudentDB.db"),
  version: 1,
  onCreate: (db,version) async {
    // await db.execute(
    //   '''
    //   CREATE TABLE Student(empId INTEGER PRIMARY KEY, name TEXT, sal REAL)
    //   '''
    // );
    await db.execute(
      '''
      CREATE TABLE Student( name TEXT PRIMARY KEY)
      '''
    );
  }
 );
 runApp( const MainApp());

//  Student emp1= Student(empId: 1010,name: 'kanha',sal:1.5);
//  await insertStudentData(emp1);
//  Student emp2= Student(empId: 1020,name: 'Rahul',sal:2.5);
 Student emp1= Student(name: 'kanha');
 await insertStudentData(emp1);
 Student emp2= Student(name: 'Rahul');

 await insertStudentData(emp2);

 //print(await getStudentData());
 List<Student> retVal= await getStudentData();
 for(int i=0; i<retVal.length; i++){
  print(retVal[i]);
 }

//  await deleteEmpData(emp1);
//  print("After Delete");

//  retVal= await getStudentData();
//  for(int i=0; i<retVal.length;i++){
//   print(retVal[i]);
//  }


//  Student emp3= Student(empId: 101,name: 'Ram',sal:4.5);

//  await insertStudentData(emp3);
//  print("inserted new Data");

//  retVal=await getStudentData();
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