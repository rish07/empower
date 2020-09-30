import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventThemePhone2 extends StatefulWidget {
  @override
  _EventThemePhone2State createState() => _EventThemePhone2State();
}

class _EventThemePhone2State extends State<EventThemePhone2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
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
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        "Seeing as to this situation, we decided to take matters into our own hands. Presenting to you our largest event till date, Empower. With a multitude of events ranging from panel discussions, live music, workshops, safe spaces and many more engaging activities, we aim to complement the theme of 'Mental Health for All'. We hope to see you there!",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: size.width < 500 ? 16 : 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.asset(
                      'event.png',
                      height: 250,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
