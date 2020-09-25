import 'package:auto_size_text/auto_size_text.dart';
import 'package:empower/constants.dart';
import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EventFlow extends StatefulWidget {
  @override
  _EventFlowState createState() => _EventFlowState();
}

class _EventFlowState extends State<EventFlow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                'EMPOWER',
                style: GoogleFonts.barlow(
                    color: huesYellow,
                    fontWeight: FontWeight.w800,
                    fontSize: ResponsiveWidget.isLargeScreen(context)
                        ? 120
                        : ResponsiveWidget.isMediumScreen(context)
                            ? 80
                            : 0),
              ),
            ),
            SizedBox(
              width: ResponsiveWidget.isLargeScreen(context) ? 30 : 15,
            ),
            Text(
              'EVENT\nFLOW',
              style: GoogleFonts.barlow(
                color: huesYellow,
                fontWeight: FontWeight.bold,
                fontSize: ResponsiveWidget.isLargeScreen(context)
                    ? 80
                    : ResponsiveWidget.isMediumScreen(context)
                        ? 60
                        : 0,
              ),
            ),
            SizedBox(
              width: ResponsiveWidget.isLargeScreen(context) ? size.width * 0.1 : 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: ResponsiveWidget.isMediumScreen(context)
                        ? size.width * 0.4
                        : ResponsiveWidget.isLargeScreen(context)
                            ? size.width * 0.6
                            : 0,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: huesYellow),
                      indicatorStyle: IndicatorStyle(
                        height: ResponsiveWidget.isLargeScreen(context) ? 30 : 20,
                        width: ResponsiveWidget.isLargeScreen(context) ? 30 : 20,
                        indicatorXY: ResponsiveWidget.isMediumScreen(context) ? 0.065 : 0.1,
                        color: huesYellow,
                      ),
                      endChild: Container(
                        padding: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isMediumScreen(context) ? 10 : 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Day 1 (3PM-9PM)',
                              style: GoogleFonts.barlow(fontWeight: FontWeight.bold, color: huesYellow, fontSize: ResponsiveWidget.isLargeScreen(context) ? 33 : 25),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Workshop: Building Healthy Social Relationships (3 PM - 4 PM)\nExpressive Arts Workshop for Stress Management (5 PM - 6 PM)\n\nMental Health for all, all for Mental Health- a space for discussions,\nperformances and activities for our mental health and well being. (7 PM - 9 PM)",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 12,
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
                    width: ResponsiveWidget.isMediumScreen(context)
                        ? size.width * 0.4
                        : ResponsiveWidget.isLargeScreen(context)
                            ? size.width * 0.6
                            : 0,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: huesYellow),
                      indicatorStyle: IndicatorStyle(
                        height: ResponsiveWidget.isLargeScreen(context) ? 30 : 20,
                        width: ResponsiveWidget.isLargeScreen(context) ? 30 : 20,
                        indicatorXY: ResponsiveWidget.isMediumScreen(context) ? 0.065 : 0.1,
                        color: huesYellow,
                      ),
                      endChild: Container(
                        padding: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isMediumScreen(context) ? 10 : 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Day 2 (3PM-9PM)',
                              style: GoogleFonts.barlow(fontWeight: FontWeight.bold, color: huesYellow, fontSize: ResponsiveWidget.isLargeScreen(context) ? 33 : 25),
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
                                fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: ResponsiveWidget.isMediumScreen(context)
                        ? size.width * 0.4
                        : ResponsiveWidget.isLargeScreen(context)
                            ? size.width * 0.6
                            : 0,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: huesYellow),
                      indicatorStyle: IndicatorStyle(
                        height: ResponsiveWidget.isLargeScreen(context) ? 30 : 20,
                        width: ResponsiveWidget.isLargeScreen(context) ? 30 : 20,
                        indicatorXY: ResponsiveWidget.isMediumScreen(context) ? 0.065 : 0.1,
                        color: huesYellow,
                      ),
                      endChild: Container(
                        padding: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isMediumScreen(context) ? 10 : 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Other than that, there will be multiple contests, engaging activities, Live Art\nand Live Music throughout the span of two days!",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
