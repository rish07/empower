import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurposePhone2 extends StatefulWidget {
  @override
  _PurposePhone2State createState() => _PurposePhone2State();
}

class _PurposePhone2State extends State<PurposePhone2> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'OUR',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: size.width < 500 ? 40 : 60,
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
                      textAlign: TextAlign.center,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: size.width < 500 ? 40 : 60,
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
                SizedBox(
                  height: size.height * 0.1,
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
                              size: 40,
                            ),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Reduce stigma",
                                      style: GoogleFonts.gochiHand(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'flower.png',
                                      height: 35,
                                      width: 35,
                                    ),
                                  ],
                                ),
                                Text(
                                  "around mental health",
                                  style: GoogleFonts.gochiHand(
                                    fontSize: 22,
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
                          size: 40,
                        ),
                        Text(
                          "Educate people\non mental health",
                          style: GoogleFonts.gochiHand(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'book.png',
                          height: 35,
                          width: 35,
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
                              size: 40,
                            ),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Provide proper",
                                      style: GoogleFonts.gochiHand(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'doc.png',
                                      height: 35,
                                      width: 35,
                                    ),
                                  ],
                                ),
                                Text(
                                  "and reliable treatment",
                                  style: GoogleFonts.gochiHand(
                                    fontSize: 22,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
