import 'package:empower/constants.dart';
import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: ResponsiveWidget.isMediumScreen(context) ? 32 : 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Huesofthemind',
            textAlign: TextAlign.center,
            style: GoogleFonts.justAnotherHand(
              color: huesYellow,
              fontSize: ResponsiveWidget.isLargeScreen(context) ? 100 : 70,
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "There are a million hues of our minds- hues of happiness,\nmelancholy, joy, sorrow and many more. We provide a place\nfor people to share the various hues of the mind and in this\nprocess, share, learn, cope and heal together as a community.\n\nWe are a bridge connecting people in need with designated\nmental health professionals. We can call ourselves a Safe Space,\na platform for Self Help and a way to encourage Mental Health\nAwareness. We have collaborated with over 30+ organisations,\nMental Health professionals and mental health advocates to\nsupport the same cause.",
                    style: GoogleFonts.barlow(
                      fontSize: ResponsiveWidget.isLargeScreen(context) ? 24 : 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "A place where people empower each other. We help people, help themselves!",
            style: GoogleFonts.gochiHand(
              fontSize: ResponsiveWidget.isLargeScreen(context) ? 26 : 12,
            ),
          ),
        ],
      ),
    );
  }
}
