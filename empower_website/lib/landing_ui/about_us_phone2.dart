import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPhone2 extends StatefulWidget {
  @override
  _AboutUsPhone2State createState() => _AboutUsPhone2State();
}

class _AboutUsPhone2State extends State<AboutUsPhone2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 250,
              width: 250,
              child: Image.asset(
                'guy.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                "A place where people empower each other.\nWe help people, help themselves!",
                textAlign: TextAlign.center,
                style: GoogleFonts.gochiHand(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
