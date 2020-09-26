import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Purpose extends StatefulWidget {
  @override
  _PurposeState createState() => _PurposeState();
}

class _PurposeState extends State<Purpose> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'bg2.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isMediumScreen(context) ? 32 : 64, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OUR\nPURPOSE',
                      style: GoogleFonts.barlow(
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black12,
                            offset: Offset(0, 3),
                          ),
                        ],
                        fontSize: ResponsiveWidget.isLargeScreen(context) ? 60 : 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    Row(
                      children: [
                        Text(
                          "Promoting awareness\namongst youth and parents",
                          style: GoogleFonts.gochiHand(
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 28 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                        ),
                        Image.asset(
                          'busi.png',
                          height: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                          width: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Text(
                          "Creating a\nsafespace",
                          style: GoogleFonts.gochiHand(
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 28 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                        ),
                        Image.asset(
                          'spa.png',
                          height: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                          width: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Text(
                          "Ensure mental\nwellbeing of people",
                          style: GoogleFonts.gochiHand(
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 28 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                        ),
                        Image.asset(
                          'brain.png',
                          height: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                          width: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '&',
                      style: GoogleFonts.barlow(
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black12,
                            offset: Offset(0, 3),
                          ),
                        ],
                        fontSize: ResponsiveWidget.isMediumScreen(context) ? 100 : 200,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveWidget.isMediumScreen(context) ? size.height * 0.05 : size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.5,
                      width: 4.0,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'OUR\nVISION',
                      textAlign: TextAlign.end,
                      style: GoogleFonts.barlow(
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            color: Colors.black12,
                            offset: Offset(0, 3),
                          ),
                        ],
                        fontSize: ResponsiveWidget.isLargeScreen(context) ? 60 : 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'flower.png',
                          height: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                          width: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                        ),
                        SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                        ),
                        Text(
                          "Reduce stigma\naround mental health",
                          textAlign: TextAlign.end,
                          style: GoogleFonts.gochiHand(
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 28 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'book.png',
                          height: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                          width: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                        ),
                        SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                        ),
                        Text(
                          "Educate people\non mental health",
                          textAlign: TextAlign.end,
                          style: GoogleFonts.gochiHand(
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 28 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'doc.png',
                          height: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                          width: ResponsiveWidget.isLargeScreen(context) ? 80 : 40,
                        ),
                        SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                        ),
                        Text(
                          "Provide proper\nand reliable treatment",
                          textAlign: TextAlign.end,
                          style: GoogleFonts.gochiHand(
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 28 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
