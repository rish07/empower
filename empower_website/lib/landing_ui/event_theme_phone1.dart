import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventThemePhone1 extends StatefulWidget {
  @override
  _EventThemePhone1State createState() => _EventThemePhone1State();
}

class _EventThemePhone1State extends State<EventThemePhone1> {
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
              horizontal: 22,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'EMPOWER',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.barlow(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 60,
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                        offset: Offset(0, 3),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'EVENT',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 45,
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
                      'THEME',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 45,
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "The World Health Organization recognizes the 10th of October as World Mental Health Day. Every year a specific theme is chosen and awareness is spread on that theme and for this year the theme is Mental Health for All.",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: size.width < 500 ? 16 : 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "This year, the pandemic has caused extreme panic across people of all ages and cultures. With the rate at which it has spread to all parts of the world, the entirety of the world has been on the edge, with every feeling ranging from isolation, to loneliness to anxiety, the phrase “Mental Health For All” could not be more apt. Now more than ever, we need to be more empathetic towards each other’s distresses & challenges.",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: size.width < 500 ? 16 : 20,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
