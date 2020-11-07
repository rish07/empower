import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../responsive_widget.dart';

class Collaborations extends StatefulWidget {
  @override
  _CollaborationsState createState() => _CollaborationsState();
}

class _CollaborationsState extends State<Collaborations> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: ResponsiveWidget.isMediumScreen(context) ? 32 : 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Our Collaborations',
                textAlign: TextAlign.center,
                style: GoogleFonts.justAnotherHand(
                  color: huesYellow,
                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 100 : 70,
                ),
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Colors.black,
              ),
            ],
          ),
          Text(
            "Over the course of 'Empower', we have successfully collaborated with over 20 organizations!\nThese are listed below:",
            style: GoogleFonts.barlow(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Official Partners',
                      style: GoogleFonts.barlow(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: size.height * 0.1,
                          width: size.width * 0.03,
                          child: Image.asset(
                            'web/assets/Logo_White_Theme.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: size.height * 0.1,
                          width: size.width * 0.1,
                          child: Image.asset(
                            'web/assets/Copy of Blue-Logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Products & Services Partners',
                      style: GoogleFonts.barlow(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: size.height * 0.1,
                          width: size.width * 0.05,
                          child: Image.asset(
                            'web/assets/Lonepack-2-01 (1).png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: size.height * 0.1,
                          width: size.width * 0.05,
                          child: Image.asset(
                            'web/assets/Therapiologob.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: size.height * 0.1,
                          width: size.width * 0.1,
                          child: Image.asset(
                            'web/assets/animalangels.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: size.height * 0.1,
                          width: size.width * 0.1,
                          child: Image.asset(
                            'web/assets/manochikitsa.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: size.height * 0.1,
                          width: size.width * 0.1,
                          child: Image.asset(
                            'web/assets/Final.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Media Partners',
                    style: GoogleFonts.barlow(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: size.height * 0.1,
                        width: size.width * 0.12,
                        child: Image.asset(
                          'web/assets/HINDUBLACK (1).png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: size.height * 0.1,
                        width: size.width * 0.1,
                        child: Image.asset(
                          'web/assets/skaotic_black.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Publicity Partners',
                    style: GoogleFonts.barlow(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: size.height * 0.1,
                        width: size.width * 0.05,
                        child: Image.asset(
                          'web/assets/u25.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: size.height * 0.1,
                        width: size.width * 0.1,
                        child: Image.asset(
                          'web/assets/rovo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
