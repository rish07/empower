import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
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
              padding: EdgeInsets.symmetric(vertical: !ResponsiveWidget.isSmallScreen(context) ? 64 : 32, horizontal: ResponsiveWidget.isLargeScreen(context) ? 80 : 40),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'GET IN TOUCH',
                            style: GoogleFonts.barlow(
                              shadows: [
                                Shadow(
                                  blurRadius: 6,
                                  color: Colors.black12,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: ResponsiveWidget.isLargeScreen(context) ? 50 : 30,
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                          ),
                          Image.asset(
                            'email.png',
                            height: ResponsiveWidget.isMediumScreen(context)
                                ? 40
                                : ResponsiveWidget.isLargeScreen(context)
                                    ? 60
                                    : 35,
                            width: ResponsiveWidget.isMediumScreen(context)
                                ? 40
                                : ResponsiveWidget.isLargeScreen(context)
                                    ? 60
                                    : 35,
                          ),
                        ],
                      ),
                      !ResponsiveWidget.isSmallScreen(context)
                          ? Column(
                              children: [
                                Text(
                                  'Have any queries related to the event?',
                                  style: GoogleFonts.barlow(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ResponsiveWidget.isLargeScreen(context) ? 24 : 14,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Drop us an email at the address below!",
                                  style: GoogleFonts.barlow(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ResponsiveWidget.isLargeScreen(context) ? 24 : 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Have any queries related to\nthe event?',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.barlow(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Drop us an email at the\naddress below!",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.barlow(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.arrow_right_alt_outlined,
                                color: Colors.white,
                                size: ResponsiveWidget.isMediumScreen(context)
                                    ? 20
                                    : ResponsiveWidget.isLargeScreen(context)
                                        ? 40
                                        : 30,
                              ),
                              SelectableText(
                                'huesofthemind@gmail.com',
                                style: GoogleFonts.gochiHand(
                                  fontSize: ResponsiveWidget.isLargeScreen(context)
                                      ? 30
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? 15
                                          : 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.arrow_right_alt_outlined,
                                color: Colors.white,
                                size: ResponsiveWidget.isMediumScreen(context)
                                    ? 20
                                    : ResponsiveWidget.isLargeScreen(context)
                                        ? 40
                                        : 30,
                              ),
                              SelectableText(
                                'huesofthemind.pr@gmail.com',
                                style: GoogleFonts.gochiHand(
                                  fontSize: ResponsiveWidget.isLargeScreen(context)
                                      ? 30
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? 15
                                          : 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'FIND US HERE',
                            style: GoogleFonts.barlow(
                              shadows: [
                                Shadow(
                                  blurRadius: 6,
                                  color: Colors.black12,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: ResponsiveWidget.isLargeScreen(context) ? 50 : 30,
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5,
                          ),
                          Image.asset(
                            'find.png',
                            height: ResponsiveWidget.isMediumScreen(context)
                                ? 40
                                : ResponsiveWidget.isLargeScreen(context)
                                    ? 60
                                    : 35,
                            width: ResponsiveWidget.isMediumScreen(context)
                                ? 40
                                : ResponsiveWidget.isLargeScreen(context)
                                    ? 60
                                    : 35,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (await canLaunch("https://www.instagram.com/huesofthemind/")) {
                                        await launch("https://www.instagram.com/huesofthemind/");
                                      } else {
                                        throw "Could not open!";
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'insta_white.png',
                                          height: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          width: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Instagram',
                                          style: GoogleFonts.gochiHand(
                                            color: Colors.white,
                                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (await canLaunch("https://www.linkedin.com/company/huesofthemind/")) {
                                        await launch("https://www.linkedin.com/company/huesofthemind/");
                                      } else {
                                        throw "Could not open!";
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'link_white.png',
                                          height: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          width: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Linkedin',
                                          style: GoogleFonts.gochiHand(
                                            color: Colors.white,
                                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (await canLaunch("https://twitter.com/huesofthemind")) {
                                        await launch("https://twitter.com/huesofthemind");
                                      } else {
                                        throw "Could not open!";
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'twitter_white.png',
                                          height: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          width: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Twitter',
                                          style: GoogleFonts.gochiHand(
                                            color: Colors.white,
                                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (await canLaunch("https://www.facebook.com/huesofthemind/")) {
                                        await launch("https://www.facebook.com/huesofthemind/");
                                      } else {
                                        throw "Could not open!";
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'face.png',
                                          height: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          width: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Facebook',
                                          style: GoogleFonts.gochiHand(
                                            color: Colors.white,
                                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      final snackBar = SnackBar(
                                        content: Text('Aw! We love you too! ❤'),
                                      );
                                      Scaffold.of(context).showSnackBar(snackBar);
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'heart.png',
                                          height: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          width: ResponsiveWidget.isLargeScreen(context) ? 25 : 28,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Your Heart',
                                          style: GoogleFonts.gochiHand(
                                            color: Colors.white,
                                            fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveWidget.isSmallScreen(context) ? 40 : 0,
                          ),
                          ResponsiveWidget.isSmallScreen(context)
                              ? Container(
                                  child: Image.asset(
                                    'box.png',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.contain,
                                  ),
                                )
                              : Container()
                        ],
                      )
                    ],
                  ),
                  !ResponsiveWidget.isSmallScreen(context)
                      ? SizedBox(
                          width: size.width * 0.2,
                        )
                      : Container(),
                  !ResponsiveWidget.isSmallScreen(context)
                      ? Container(
                          width: size.width * 0.4,
                          child: Image.asset('box.png'),
                          height: size.height * 0.5,
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: size.height * 0.96),
              height: size.height * 0.04,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Made with ❤ by Team Sahaara',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
