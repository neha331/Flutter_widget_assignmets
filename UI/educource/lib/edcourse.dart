import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Edcourse extends StatefulWidget {
  const Edcourse({super.key});
  @override
  State<StatefulWidget> createState() => _EdcourseState();
}

class _EdcourseState extends State<Edcourse> {
  List<Map> courses = [{}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 222, 250, 238),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    SizedBox(height: 50),
                    Icon(
                      Icons.menu_sharp,
                      size: 28,
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications_none,
                      size: 28,
                    ),
                  ],
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        child: Text(
                          'Welcome To News',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.jost(
                            fontWeight: FontWeight.w300,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Educourse',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w700,
                      fontSize: 37,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SearchBar(
                  hintText: 'Enter Your Keyword',
                  trailing: [
                    Icon(Icons.search),
                  ],
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(255, 255, 255, 1)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 520,
              width: 360,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Course For You',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      //color: Colors.green,
                      margin: EdgeInsets.all(1.0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 192 / 242,
                                    child: ClipRect(
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzD3H73JW2vFXGUHzRPGV3uf92aWWiCwFzNEwwuFZE3jhhRWEvTZBjQ-WRU7PCU6C9xRs&usqp=CAU",
                                        //height:400,
                                        //width:200
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: Text(
                                        'Course Details',
                                        //  textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Courses By Category',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  )),
                  const SizedBox(height: 10),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              //color:Color.fromARGB(255, 77, 93, 139),
                            ),
                            margin: EdgeInsets.all(8.0),
                            width: 50,
                            height: 65,
                            child: Column(
                              children: [
                                Container(
                                  // color: Color.fromRGBO(25, 0, 56, 1),
                                  child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyHfVbCd39lqKYQSBSb3m5MqcqDM7iQTLno2WSn6urXFJN6wkcSHTp2Q1cGczuF3nxfhs&usqp=CAU",
                                      height: 36,
                                      width: 50),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Flutter'),
                              ],
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
