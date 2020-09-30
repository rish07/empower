import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class PurposePhone1 extends StatefulWidget {
  @override
  _PurposePhone1State createState() => _PurposePhone1State();
}

class _PurposePhone1State extends State<PurposePhone1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OUR',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: size.width < 500 ? 35 : 50,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            offset: Offset(0, 3),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'PURPOSE',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: size.width < 500 ? 35 : 50,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            offset: Offset(0, 3),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Colors.white,
                              size: 32,
                            ),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Promoting awareness",
                                      style: GoogleFonts.gochiHand(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'busi.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                ),
                                Text(
                                  "amongst youth and parents",
                                  style: GoogleFonts.gochiHand(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                        Text(
                          "Creating a\nsafespace",
                          style: GoogleFonts.gochiHand(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'spa.png',
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Colors.white,
                              size: 32,
                            ),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Ensure mental",
                                      style: GoogleFonts.gochiHand(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'brain.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                ),
                                Text(
                                  "well-being of people",
                                  style: GoogleFonts.gochiHand(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'OUR',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: size.width < 500 ? 35 : 50,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            offset: Offset(0, 3),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'VISION',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: size.width < 500 ? 35 : 50,
                        shadows: [
                          Shadow(
                            blurRadius: 6,
                            offset: Offset(0, 3),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'flower.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Reduce stigma",
                                      style: GoogleFonts.gochiHand(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "around mental health",
                                  style: GoogleFonts.gochiHand(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Transform.rotate(
                              angle: 180 * math.pi / 180,
                              child: Icon(
                                Icons.arrow_right_alt_outlined,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'book.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Educate people\non mental health",
                          style: GoogleFonts.gochiHand(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Transform.rotate(
                          angle: 180 * math.pi / 180,
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'doc.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Provide proper",
                                      style: GoogleFonts.gochiHand(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "and reliable treatment",
                                  style: GoogleFonts.gochiHand(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Transform.rotate(
                              angle: 180 * math.pi / 180,
                              child: Icon(
                                Icons.arrow_right_alt_outlined,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                      ],
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
