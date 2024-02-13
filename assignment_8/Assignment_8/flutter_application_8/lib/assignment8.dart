import 'dart:math';

import 'package:flutter/material.dart';

class Assignmet8 extends StatefulWidget{
  const Assignmet8();
  
  @override
  State<Assignmet8> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignmet8>{
  int armCount =0;
  int count = 0;
  int strong_count=0;
  int reverseNum= 0;
  void countPallindrome(){
    count =0;
    List<int>numberList = [1,225, -777, 121, 234, 999,153];
    for (int i =0; i<numberList.length; i++){
      int temp = numberList[i].abs();
      int reverseNum= 0;
      while(temp!=0){
        reverseNum= reverseNum *10 +temp %10;
        temp=temp ~/ 10;
    }
    if (reverseNum == numberList[i].abs()){
      count++;

    }
  }
  }
   void isArmStrong(){
    armCount =0;
    List<int>numberList = [1,225, -777, 121, 234, 999,153,1634];
    for (int i =0; i<numberList.length; i++){
      int temp = numberList[i].abs();
      int temp2=numberList[i].abs();
     int  number_of_digits=0;
      int reverseNum= 0;
      while(temp!=0){
        temp=temp ~/ 10;
        number_of_digits++;

    }
    var current_Digit;
    dynamic sum=0;
    var  num=temp2;
   
    while(temp2>0){
      current_Digit = temp2 % 10;
      sum =sum+ pow(current_Digit,number_of_digits);
      temp2= temp2~/10;
    }
    if (sum == numberList[i].abs()){
      armCount++;
    }
  }
  }
// strong number 
void countStrong(){
    strong_count =0;
    int sum=0;
    List<int>numberList = [145,225,1, 121, 234, 999,153,40585];
    for (int i =0; i<numberList.length; i++){
      sum=0;
      int temp = numberList[i].abs();
      //int reverseNum= 0;
      int rem=0;
      int fact=0;
      while(temp!=0){
        rem =temp %10;
         fact=1;
         for( int i=1;i<=rem;i++){
          fact=fact*i;
         }
         sum=sum+fact;
         temp= temp ~/ 10;
    }
  
    if (sum== numberList[i].abs()){
      strong_count++;
    }
  }
  }

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment8"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                   ElevatedButton(onPressed: (){
                    countPallindrome();
                    setState((){}); 
                   }, child: const Text("check pallindrome"),
                   ),
                   const SizedBox( height:20),
                   Text(" $count numbers are pallindrome",  )
               ],
            ),
            Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                   ElevatedButton(onPressed: (){
                    isArmStrong();
                    setState((){}); 
                   }, child: const Text("check Armstrong"),
                   ),
                   const SizedBox( height:20),
                   Text(" $armCount numbers are armstrong")
               ],
            ),
            Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                   ElevatedButton(onPressed: (){
                    countStrong();
                    setState((){}); 
                   }, child: const Text("check strongnumber"),
                   ),
                   const SizedBox( height:20),
                   Text(" $strong_count numbers are strongnumber")
               ],
            ),
          ],
        ),
        
      )
      );
  }
  }