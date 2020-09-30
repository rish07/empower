import 'package:empower/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EventFlowPhone1 extends StatefulWidget {
  @override
  _EventFlowPhone1State createState() => _EventFlowPhone1State();
}

class _EventFlowPhone1State extends State<EventFlowPhone1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 22, right: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'EMPOWER',
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
              color: huesYellow,
              fontWeight: FontWeight.w800,
              fontSize: 60,
            ),
          ),
          Column(
            children: [
              Text(
                'EVENT',
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                  color: huesYellow,
                  fontWeight: FontWeight.w700,
                  fontSize: 45,
                ),
              ),
              Text(
                'FLOW',
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                  color: huesYellow,
                  fontWeight: FontWeight.w700,
                  fontSize: 45,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
              top: 24,
            ),
            child: TimelineTile(
              isFirst: true,
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
                      'Day 1 (3PM-9PM)',
                      style: GoogleFonts.barlow(fontWeight: FontWeight.bold, color: huesYellow, fontSize: 25),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Workshop: Building Healthy Social Relationships (3 PM - 4 PM)\nExperience based activity for Stress Management (5 PM - 6 PM)\n\nMental Health for all, all for Mental Health- a space for discussions,\nperformances and activities for our mental health and well being. (7 PM - 9 PM)\n",
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
        ],
      ),
    );
  }
}
