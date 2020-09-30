import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class AboutUsPhone1 extends StatefulWidget {
  @override
  _AboutUsPhone1State createState() => _AboutUsPhone1State();
}

class _AboutUsPhone1State extends State<AboutUsPhone1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 22,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Huesofthemind',
            textAlign: TextAlign.center,
            style: GoogleFonts.justAnotherHand(
              color: huesYellow,
              fontSize: 50,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              "There are a million hues of our minds- hues of happiness, melancholy, joy, sorrow and many more. We provide a place for people to share the various hues of the mind and in this process, share, learn, cope and heal together as a community.\n\nWe are a bridge connecting people in need with designated mental health professionals. We can call ourselves a Safe Space, a platform for Self Help and a way to encourage Mental Health Awareness. We have collaborated with over 30+ organisations Mental Health professionals and mental health advocates to support the same cause.",
              textAlign: TextAlign.left,
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
