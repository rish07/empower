import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:empower/constants.dart';
import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset('bg1.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        buildAppBarMenu(
                          context,
                          title: 'HOME',
                          onPress: () {},
                          isActive: true,
                        ),
                        buildAppBarMenu(
                          context,
                          title: 'EVENT THEME',
                          onPress: () {},
                          isActive: false,
                        ),
                        buildAppBarMenu(
                          context,
                          title: 'OUR PURPOSE',
                          onPress: () {},
                          isActive: false,
                        ),
                        buildAppBarMenu(
                          context,
                          title: 'ABOUT US',
                          onPress: () {},
                          isActive: false,
                        ),
                        buildAppBarMenu(
                          context,
                          title: 'CONTACT US',
                          onPress: () {},
                          isActive: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: !ResponsiveWidget.isLargeScreen(context) ? size.height * 0.18 : size.height * 0.1,
                    ),
                    AutoSizeText(
                      'EMPOWER',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w900,
                          color: huesYellow,
                          letterSpacing: 5,
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? 200
                              : (ResponsiveWidget.isMediumScreen(context))
                                  ? 150
                                  : 60),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WHERE ',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 75
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 50
                                      : 30),
                        ),
                        Text(
                          'EMPATHY ',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.bold,
                              color: huesYellow,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 75
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 50
                                      : 30),
                        ),
                        Text(
                          'IS YOUR ',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 75
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 50
                                      : 30),
                        ),
                        Text(
                          'POWER',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.bold,
                              color: huesYellow,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 75
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 50
                                      : 30),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    AutoSizeText(
                      'Come join us for our biggest \nevent till date!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.gochiHand(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          letterSpacing: 5,
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? 68
                              : (ResponsiveWidget.isMediumScreen(context))
                                  ? 42
                                  : 20),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: !ResponsiveWidget.isLargeScreen(context) ? size.height * 0.1 : size.height * 0.06,
                          horizontal: ResponsiveWidget.isMediumScreen(context)
                              ? size.width * 0.1
                              : (ResponsiveWidget.isLargeScreen(context))
                                  ? size.width * 0.12
                                  : 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 43,
                                  width: 43,
                                  child: Image.asset('web/assets/insta.png'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 43,
                                  width: 43,
                                  child: Image.asset('web/assets/link.png'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 43,
                                  width: 43,
                                  child: Image.asset('web/assets/twitter.png'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: ResponsiveWidget.isMediumScreen(context) ? size.width * 0.05 : 90,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: huesYellow,
                            child: Container(
                              child: AutoSizeText(
                                'Take me there',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.gochiHand(
                                  color: Colors.white,
                                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 35 : 30,
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '10-11th',
                                style: GoogleFonts.barlow(
                                  fontSize: ResponsiveWidget.isMediumScreen(context) ? 60 : 70,
                                  color: huesYellow,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'October',
                                style: GoogleFonts.barlow(
                                  fontSize: ResponsiveWidget.isMediumScreen(context) ? 30 : 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildAppBarMenu(BuildContext context, {String title, Function onPress, bool isActive}) {
    return Padding(
      padding: EdgeInsets.only(
          top: 16,
          right: ResponsiveWidget.isMediumScreen(context)
              ? 16
              : ResponsiveWidget.isLargeScreen(context)
                  ? 90
                  : 5),
      child: MaterialButton(
        onPressed: onPress,
        child: Text(
          title,
          style: GoogleFonts.barlow(
            color: isActive ? huesYellow : Colors.black,
            fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
            fontSize: isActive
                ? (ResponsiveWidget.isLargeScreen(context)
                    ? 35
                    : (ResponsiveWidget.isMediumScreen(context))
                        ? 28
                        : 18)
                : ResponsiveWidget.isLargeScreen(context)
                    ? 25
                    : (ResponsiveWidget.isMediumScreen(context))
                        ? 20
                        : 12,
          ),
        ),
      ),
    );
  }
}
