import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 238, 238, 1),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          children: [
            Icon(Icons.arrow_back_outlined),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(
                'assets/images/verification_screen_circle.svg',
                height: 128.2,
                width: 210,
              ),
            ),
          ],
        ),
        const Spacer(flex: 1),
        Text(
          'Verification',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Enter the OTP code from the phone we just sent you.',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        const Spacer(flex: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: 50,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              ' Don’t receive OTP code! Resend.',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const Spacer(flex: 1),
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
              child: Text('Submit',
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
            ),
          ),
        ),
        const Spacer(flex: 14),
      ]),
    );
  }
}
