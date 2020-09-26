import 'package:auto_size_text/auto_size_text.dart';
import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTheme extends StatefulWidget {
  @override
  _EventThemeState createState() => _EventThemeState();
}

class _EventThemeState extends State<EventTheme> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'bg2.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'EMPOWER',
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: ResponsiveWidget.isLargeScreen(context)
                                ? 120
                                : ResponsiveWidget.isMediumScreen(context)
                                    ? 80
                                    : 0),
                      ),
                    ),
                    SizedBox(
                      width: ResponsiveWidget.isLargeScreen(context) ? 30 : 15,
                    ),
                    Text(
                      'EVENT\nTHEME',
                      style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveWidget.isLargeScreen(context)
                            ? 80
                            : ResponsiveWidget.isMediumScreen(context)
                                ? 60
                                : 0,
                      ),
                    ),
                    SizedBox(
                      width: ResponsiveWidget.isLargeScreen(context) ? size.width * 0.2 : 30,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: ResponsiveWidget.isLargeScreen(context) ? size.width * 0.4 : size.width * 0.3,
                        child: Text(
                          'The World Health Organization recognizes the 10th of October as World Mental Health Day. Every year a specific theme is chosen and awareness is spread on that theme and for this year the theme is Mental Health for All.',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.barlow(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 23 : 10,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: ResponsiveWidget.isLargeScreen(context) ? size.width * 0.4 : size.width * 0.3,
                        child: Text(
                          "This year, the pandemic has caused extreme panic across people of all ages and cultures. With the rate at which it has spread to all parts of the world, the entirety of the world has been on the edge, with every feeling ranging from isolation, to loneliness to anxiety, the phrase “Mental Health For All” could not be more apt. Now more than ever, we need to be more empathetic towards each other’s distresses & challenges.",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.barlow(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 23 : 10,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: ResponsiveWidget.isLargeScreen(context) ? size.width * 0.4 : size.width * 0.3,
                        child: Text(
                          "Seeing as to this situation, we decided to take matters into our own hands. Presenting to you our largest event till date, Empower. With a multitude of events ranging from panel discussions, live music, workshops, safe spaces and many more engaging activities, we aim to complement the theme of 'Mental Health for All'. We hope to see you there!",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.barlow(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 23 : 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
