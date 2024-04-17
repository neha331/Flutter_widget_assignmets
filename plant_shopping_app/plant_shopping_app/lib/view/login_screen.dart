import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 238, 238, 1),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Log in',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 34.22,
              ),
            ),
            const SizedBox(height:20),
            const TextField (
              decoration: InputDecoration(
                filled:true,
                fillColor:Colors.white,
                border:OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Color.fromRGBO(204, 211, 196, 1),
                  )
                ),
                hintText: 'Mobile Number',
                prefixIcon: Icon(Icons.phone,
                )
              ),
            ),
            const SizedBox(height:20),
            Image.asset('assets/images/login_page.png'),
            const SizedBox(height:20),
          GestureDetector(
            child: Container(
              height:50,
              width:320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient:const LinearGradient(
                  colors: [
                    Color.fromRGBO(62, 102, 24, 1),
                    Color.fromRGBO(124, 180, 70, 1)
                  ]
                )
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Get started > ',
                  style:GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )
                ),
              ),
            ),
          )   
          ] 
        ),
      ),
    );
  }
   
}