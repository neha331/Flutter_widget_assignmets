import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icon_forest/icon_forest.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      backgroundColor: Color.fromRGBO(241, 238, 238, 1),
      body:Padding(
        padding: const EdgeInsets.all(13.0),
        
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/home_screen.png',
              alignment: Alignment.center,
              height:243,
              width:195,
              ),
              Text(
                'Snake Plants',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height:20),
              Text(
                'Plansts make your life with minimal and happy love the plants more and enjoy life.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height:30),
            GestureDetector(
              child: Container(
                height:200,
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
                child:const  Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.arrow_upward_outlined,
                               color:Colors.white,
                               size:34.0,
                              ),
                              Text('Height',
                               style:TextStyle(
                                color:Color.fromRGBO(255, 255, 255, 1),
                               )
                              ),
                              Text('10cm-40cm',
                              style:TextStyle(
                                color:Color.fromRGBO(255, 255, 255, 1),
                               )
                              )
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.device_thermostat_sharp,
                                 color:Colors.white,
                                 size:34.0,
                                ),
                                Text('Pot',
                                 style:TextStyle(
                                  color:Color.fromRGBO(255, 255, 255, 1),
                                 )
                                ),
                                Text('Ciramic Pot',
                                style:TextStyle(
                                  color:Color.fromRGBO(255, 255, 255, 1),
                                 )
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Icon(Icons.playlist_add_check_outlined,
                                 color:Colors.white,
                                 size:34.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:30),
                       Row(
                         children: [
                        Column(
                          children: [
                            Text('Total Price',
                                 style:TextStyle(
                                  color:Color.fromRGBO(255, 255, 255, 1),
                                 )
                            ),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee,
                                 color:Colors.white,
                                 size:34.0,
                                ),
                                Text('320',
                                 style:TextStyle(
                                  color:Color.fromRGBO(255, 255, 255, 1),
                                 )
                            ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                         Row(
                            children: [
                              Icon(Icons.card_travel,
                               color:Colors.white,
                                   size:34.0,
                              ),
                              Text('Add to cart',
                                   style:TextStyle(
                                    color:Color.fromRGBO(255, 255, 255, 1),
                                   )
                              ),
                            ],
                          ),
                       
                        
                                        ],
                                       ),
                     
                    ],
                  ),
                ),
              ),
            )
            ]  
            
          ),
        ),
        
      ),
    );
  }
   
}