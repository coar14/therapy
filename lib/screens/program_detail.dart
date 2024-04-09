import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapy/screens/program_care.dart';
import 'package:therapy/themes/app_image.dart';
import 'package:therapy/themes/const_style.dart';
import 'package:therapy/widget/bottom_navbar.dart';

class ProgramDetail extends StatelessWidget {
  const ProgramDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 19.5, right: 10),
          child: Column(
            children: [
              Container(
                height: 160,
                width: 370,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: aRed,
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBar(),
                          ),
                        );
                      },
                      child: const Image(
                        image: AssetImage(AppImages.back),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'PROGRAMS',
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nChoose programs that fit your needs',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
               GestureDetector(
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProgramCare(),
                      ),
                    );
                  },
              child: Container(
                height: 199,
                width: 393,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.postop))
                ),
                
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:130, left: 12),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Postoperative Care',
                          style: GoogleFonts.lato(
                            fontSize:20,
                            fontWeight: FontWeight.w400
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\n              Duration: 6 weeks',
                              style: GoogleFonts.lato(
                                fontSize:15,
                              )
                            )
                          ]
                          ),
                        ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top:130,right: 15),
                      child: Image(
                        color:Colors.white,
                        image: AssetImage(AppImages.add,)),
                    )
                  ],
                ),
                
                ),
                
               ),
            ],
          ),
        ),
      ),
    );
  }
}
