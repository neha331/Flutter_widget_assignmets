import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseContentScreen extends StatefulWidget {
  const CourseContentScreen({super.key});
  @override
  State<StatefulWidget> createState() => _CourseContentScreenState();
}
class _CourseContentScreenState extends State<CourseContentScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(197, 4, 98, 1),
                Color.fromRGBO(80, 3, 112, 1),
              ],
              stops: [
               0.1,
               0.4,
              ]
           )
        ),
      child: Column(
         children: [
            Container(
              padding: const EdgeInsets.only(left: 30.0,top:70.0,bottom:30.0),
            //  height:297,
            //  width:360,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text(
                  'UX Designer from Scratch.',
                  textAlign: TextAlign.start,
                  style:TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 30.61,
                    //FONTSTYLE
                    fontWeight: FontWeight.w500,
                  )
                ),
                const Text(
                  'Basic guideline & tips & trics for how to\nbecomae designer easily.',
                  textAlign: TextAlign.start,
                  style:TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 14,
                    //FONTSTYLE
                    fontWeight: FontWeight.w300,
                  )
                ),
               const SizedBox(height:30),
               Row(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color:Colors.white),
                          color:const Color.fromRGBO(0, 82, 178, 1),
                        ),
                        child:const Icon(
                          Icons.person_outline_rounded,
                          color:Colors.white,
                          size: 33.0,
                        )
                      ),
                      const SizedBox(width:10),
                      const Text(
                        'Athor',style:TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                          //FONTSTYLE
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const Text(
                        ' Jenny',
                         style:TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                          //FONTSTYLE
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width:30),
                      const Text(
                        "4.8",
                         style:TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                          //FONTSTYLE
                          fontWeight: FontWeight.w400,
                        ),
                       ),
                       const Icon(
                        Icons.star_outlined,
                        color: Color.fromRGBO(255, 146, 0, 1),
                       ),
                       const Text(
                        '[20 Review]',
                         style:TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                          //FONTSTYLE
                          fontWeight: FontWeight.w300,
                        ),
                       ),
                    ],
                  )
                ],
               )
               ],
             )
            ),
            Expanded(
              child: Container(
                //padding:EdgeInsets.all(20),
                decoration:const  BoxDecoration(
                    color:Color.fromRGBO(247, 241, 241, 1),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              child: ListView.builder(
                 itemBuilder:(context, index) {
                   return Container(
                    margin: EdgeInsets.only(left:20,right:20,bottom:20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin:EdgeInsets.all(3.0),
                          padding: EdgeInsets.only(top:18,bottom:18,left:7,right:7),
                          height:60,
                          width:46,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(225, 230, 230, 1),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Container(
                           // height:5,
                           // width:4,
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                color: Colors.black,
                              )
                            ),
                            child:const  Icon(Icons.play_arrow),
                          )
                        ),
                        const SizedBox(width:10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Introduction',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
                              'Course Details',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            
                          ],
                        )
                      ]
                    ),
                  );
                 },
              )  
             
              ),
            ),
          ],
        ),
      )
    );
     
    }

}