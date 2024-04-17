import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 244, 1),
      body: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            'assets/images/circle.svg',
            height: 128.2,
            width: 210,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Text(
          'Log in',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 34.22,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        const Padding(
          padding:  EdgeInsets.all(20.0),
          child:  TextField(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromRGBO(204, 211, 196, 1),
                )),
                hintText: 'Mobile Number',
                prefixIcon: Icon(
                  Icons.phone,
                )),
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
              child: Text('Log in',
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
            ),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset('assets/images/login_page.png'),
        const Spacer(
          flex: 2,
        ),
      ]),
    );
  }
}
