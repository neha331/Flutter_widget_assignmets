import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset('assets/images/first_page.png'),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            height: 100,
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enjoy your',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 34.22,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'life with',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 34.22,
                        ),
                      ),
                    ),
                    Text(
                      ' Plants',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 34.22,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          GestureDetector(
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(62, 102, 24, 1),
                    Color.fromRGBO(124, 180, 70, 1)
                  ])),
              child: Align(
                alignment: Alignment.center,
                child: Text('Get started > ',
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
              ),
            ),
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    ));
  }
}
