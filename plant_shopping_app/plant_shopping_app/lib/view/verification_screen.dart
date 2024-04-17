import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      backgroundColor: Color.fromRGBO(241, 238, 238, 1),
      body:Padding(
        padding: const EdgeInsets.all(13.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              'Verification',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(height:20),
            Text(
              'Enter the OTP code from the phone we just sent you.',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const SizedBox(height:30),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
             4,
        (index) => Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: 50,
            height: 50,
            child: TextField(
              
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled:true,
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
            const SizedBox(height:20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Don’t receive OTP code! Resend.',
                
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
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
                  'Submit',
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