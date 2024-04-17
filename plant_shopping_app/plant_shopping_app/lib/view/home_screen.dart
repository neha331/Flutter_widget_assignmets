import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 247, 248, 1),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Text(
               'Find your',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                 fontWeight: FontWeight.w500,
                   fontSize: 24,
              ),
            ),
            Text(
               'favorite plants',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                 fontWeight: FontWeight.w500,
                   fontSize: 24,
              ),
            ),
            Container(
              height: 100,
              width:300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromRGBO(204, 231, 185, 1),
              ),
              child:Row(
                children: [
                  Column(
                    children: [
                      Text(
                      '30% OFF',
                      style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              Text(
                      '02-23 April',
                      style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
                    ],
                  ),
                  SizedBox(width:40),
                  Image.asset('assets/images/discount.png',
                    height:108,
                    width:120,
                  ),
                ],
              )
            ),
            Text('Indoor'),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                     height:188,
                     width:141,
                     decoration:BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                     ),
                     child:Column(
                       children: [
                        Image.asset('assets/images/home_screen.png',
                        height:112.8,
                        width:90.24,
                       ),
                       Text(
                        'Snake Plants',
                        style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.16,
                        ),
                       ),
                    Row(
                      children: [
                       Text(
                        '₹350',
                        style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.16,
                        ),
                       ),
                       Icon(Icons.shopping_bag_outlined)
                      ],
                    ),
                  
                       ],
                     )
                  );
                },
              ),
            ),
            Text(
                        'Outdoor',
                        style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.16,
                        ),
                       ),
                       
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                     height:188,
                     width:141,
                     decoration:BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                     ),
                     child:Column(
                       children: [
                        Image.asset('assets/images/home_screen.png',
                        height:112.8,
                        width:90.24,
                       ),
                       Text(
                        'Snake Plants',
                        style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.16,
                        ),
                       ),
                    Row(
                      children: [
                       Text(
                        '₹350',
                        style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.16,
                        ),
                       ),
                       Icon(Icons.shopping_bag_outlined)
                      ],
                    ),
                  
                       ],
                     )
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      )
    );
  }
}