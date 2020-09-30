import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../constants.dart';

class EventFlowPhone2 extends StatefulWidget {
  @override
  _EventFlowPhone2State createState() => _EventFlowPhone2State();
}

class _EventFlowPhone2State extends State<EventFlowPhone2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(
                top: 24,
              ),
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: huesYellow),
                indicatorStyle: IndicatorStyle(
                  height: 20,
                  width: 20,
                  indicatorXY: 0.04,
                  color: huesYellow,
                ),
                endChild: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Day 2 (3PM-9PM)',
                        style: GoogleFonts.barlow(fontWeight: FontWeight.bold, color: huesYellow, fontSize: 25),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Workshop: Information overload-Social Media distancing (3 PM -4 PM)\nMental Health Spa (4:30 PM - 5:30 PM)\nPanel Discussion (6 PM - 7:30 PM)\n\nConclusion (8 PM - 9 PM)",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: TimelineTile(
                beforeLineStyle: LineStyle(color: huesYellow),
                indicatorStyle: IndicatorStyle(
                  height: 20,
                  width: 20,
                  indicatorXY: 0.04,
                  color: huesYellow,
                ),
                endChild: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Other than that, there will be multiple safe spaces, engaging activities, Live Art\nand Live Music throughout the span of two days!",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
