import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
            padding: EdgeInsets.symmetric(vertical: 64, horizontal: ResponsiveWidget.isLargeScreen(context) ? 80 : 40),
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
                          height: ResponsiveWidget.isMediumScreen(context) ? 40 : 60,
                          width: ResponsiveWidget.isMediumScreen(context) ? 40 : 60,
                        ),
                      ],
                    ),
                    Column(
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
                              size: ResponsiveWidget.isMediumScreen(context) ? 20 : 40,
                            ),
                            Text(
                              'huesofthemind@gmail.com',
                              style: GoogleFonts.gochiHand(
                                fontSize: ResponsiveWidget.isLargeScreen(context) ? 30 : 15,
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
                              size: ResponsiveWidget.isMediumScreen(context) ? 20 : 40,
                            ),
                            Text(
                              'huesofthemind.pr@gmail.com',
                              style: GoogleFonts.gochiHand(
                                fontSize: ResponsiveWidget.isLargeScreen(context) ? 30 : 15,
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
                          height: ResponsiveWidget.isMediumScreen(context) ? 35 : 60,
                          width: ResponsiveWidget.isMediumScreen(context) ? 35 : 60,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'insta_white.png',
                                height: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                width: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Instagram',
                                style: GoogleFonts.gochiHand(
                                  color: Colors.white,
                                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'link_white.png',
                                height: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                width: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Linkedin',
                                style: GoogleFonts.gochiHand(
                                  color: Colors.white,
                                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'twitter_white.png',
                                height: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                width: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Twitter',
                                style: GoogleFonts.gochiHand(
                                  color: Colors.white,
                                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'face.png',
                                height: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                width: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Facebook',
                                style: GoogleFonts.gochiHand(
                                  color: Colors.white,
                                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'heart.png',
                                height: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                width: ResponsiveWidget.isLargeScreen(context) ? 20 : 15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Your Heart',
                                style: GoogleFonts.gochiHand(
                                  color: Colors.white,
                                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 0.2,
                ),
                Container(
                  width: size.width * 0.4,
                  child: Image.asset('box.png'),
                  height: size.height * 0.5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
