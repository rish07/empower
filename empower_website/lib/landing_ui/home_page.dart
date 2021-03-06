import 'package:auto_size_text/auto_size_text.dart';
import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Image.asset(
              ResponsiveWidget.isSmallScreen(context) ? 'bg1phone.png' : 'bg1.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: !ResponsiveWidget.isLargeScreen(context)
                    ? size.height * 0.18
                    : ResponsiveWidget.isMediumScreen(context)
                        ? size.height * 0.1
                        : 0,
              ),
              !ResponsiveWidget.isSmallScreen(context)
                  ? AutoSizeText(
                      'EMPOWER',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w900,
                          color: huesYellow,
                          letterSpacing: ResponsiveWidget.isSmallScreen(context) ? 0 : 5,
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? 120
                              : (ResponsiveWidget.isMediumScreen(context))
                                  ? 80
                                  : 70),
                    )
                  : Container(),
              !ResponsiveWidget.isSmallScreen(context)
                  ? Row(
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
                                  ? 40
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 25
                                      : 20),
                        ),
                        Text(
                          'EMPATHY ',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.bold,
                              color: huesYellow,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 40
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 25
                                      : 20),
                        ),
                        Text(
                          'IS YOUR ',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 40
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 25
                                      : 20),
                        ),
                        Text(
                          'POWER',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.bold,
                              color: huesYellow,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 40
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 25
                                      : 20),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AutoSizeText(
                          'EMPOWER',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                              fontWeight: FontWeight.w900,
                              color: huesYellow,
                              letterSpacing: ResponsiveWidget.isSmallScreen(context) ? 0 : 5,
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 120
                                  : (ResponsiveWidget.isMediumScreen(context))
                                      ? 80
                                      : size.width < 500
                                          ? 60
                                          : 70),
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
                                fontSize: size.width < 500 ? 22 : 28,
                              ),
                            ),
                            Text(
                              'EMPATHY ',
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.bold,
                                color: huesYellow,
                                fontSize: size.width < 500 ? 22 : 28,
                              ),
                            ),
                            Text(
                              'IS ',
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: size.width < 500 ? 22 : 28,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'YOUR ',
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: size.width < 500 ? 22 : 28,
                              ),
                            ),
                            Text(
                              'POWER ',
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.bold,
                                color: huesYellow,
                                fontSize: size.width < 500 ? 22 : 28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
              !ResponsiveWidget.isSmallScreen(context)
                  ? SizedBox(
                      height: size.height * 0.06,
                    )
                  : Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '10-11th',
                            style: GoogleFonts.barlow(
                              fontSize: size.width < 500 ? 35 : 50,
                              color: huesYellow,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'October',
                            style: GoogleFonts.barlow(
                              fontSize: size.width < 500 ? 23 : 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
              !ResponsiveWidget.isSmallScreen(context)
                  ? AutoSizeText(
                      'Come join us for our biggest \nevent till date!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.gochiHand(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          letterSpacing: 5,
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? 40
                              : (ResponsiveWidget.isMediumScreen(context))
                                  ? 25
                                  : size.width < 500
                                      ? 8
                                      : 10),
                    )
                  : Column(
                      children: [
                        Text(
                          'Come join us for our',
                          style: GoogleFonts.gochiHand(
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          'biggest event',
                          style: GoogleFonts.gochiHand(
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          'till date!',
                          style: GoogleFonts.gochiHand(
                            fontSize: 26,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            onPressed: () async {
                              if (await canLaunch("https://pages.razorpay.com/hotmempower")) {
                                await launch("https://pages.razorpay.com/hotmempower");
                              } else {
                                throw "Could not open!";
                              }
                            },
                            color: huesYellow,
                            child: Container(
                              child: AutoSizeText(
                                'Take me there',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.gochiHand(
                                  color: Colors.white,
                                  fontSize: size.width < 500 ? 15 : 20,
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
              !ResponsiveWidget.isSmallScreen(context)
                  ? Container(
                      padding: EdgeInsets.symmetric(
                          vertical: !ResponsiveWidget.isLargeScreen(context) ? size.height * 0.05 : size.height * 0.02,
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
                                onTap: () async {
                                  if (await canLaunch("https://www.instagram.com/huesofthemind/")) {
                                    await launch("https://www.instagram.com/huesofthemind/");
                                  } else {
                                    throw "Could not open!";
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                                  width: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                                  child: Image.asset('web/assets/insta.png'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  if (await canLaunch("https://www.linkedin.com/company/huesofthemind/")) {
                                    await launch("https://www.linkedin.com/company/huesofthemind/");
                                  } else {
                                    throw "Could not open!";
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                                  width: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                                  child: Image.asset('web/assets/link.png'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  if (await canLaunch("https://twitter.com/huesofthemind")) {
                                    await launch("https://twitter.com/huesofthemind");
                                  } else {
                                    throw "Could not open!";
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                                  width: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                                  child: Image.asset('web/assets/twitter.png'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: ResponsiveWidget.isMediumScreen(context) ? size.width * 0.05 : 90,
                          ),
                          MaterialButton(
                            onPressed: () async {
                              if (await canLaunch("https://pages.razorpay.com/hotmempower")) {
                                await launch("https://pages.razorpay.com/hotmempower");
                              } else {
                                throw "Could not open!";
                              }
                            },
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
                          !ResponsiveWidget.isSmallScreen(context)
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10-11th',
                                      style: GoogleFonts.barlow(
                                        fontSize: ResponsiveWidget.isMediumScreen(context) ? 50 : 60,
                                        color: huesYellow,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      'October',
                                      style: GoogleFonts.barlow(
                                        fontSize: ResponsiveWidget.isMediumScreen(context) ? 20 : 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              : Container()
                        ],
                      ),
                    )
                  : Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              if (await canLaunch("https://www.instagram.com/huesofthemind/")) {
                                await launch("https://www.instagram.com/huesofthemind/");
                              } else {
                                throw "Could not open!";
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                              width: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                              child: Image.asset('web/assets/insta.png'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              if (await canLaunch("https://www.linkedin.com/company/huesofthemind/")) {
                                await launch("https://www.linkedin.com/company/huesofthemind/");
                              } else {
                                throw "Could not open!";
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                              width: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                              child: Image.asset('web/assets/link.png'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              if (await canLaunch("https://twitter.com/huesofthemind")) {
                                await launch("https://twitter.com/huesofthemind");
                              } else {
                                throw "Could not open!";
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                              width: ResponsiveWidget.isMediumScreen(context) ? 43 : 52,
                              child: Image.asset('web/assets/twitter.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
