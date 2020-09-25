import 'package:empower/event_theme.dart';
import 'package:empower/home_page.dart';
import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'constants.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var controller = PageController();
  final scrollDirection = Axis.vertical;
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: PageView(
          onPageChanged: (int ind) {
            setState(() {
              index = ind;
            });
          },
          pageSnapping: false,
          scrollDirection: scrollDirection,
          controller: controller,
          children: [
            Stack(children: [
              HomePage(),
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  buildAppBarMenu(
                    context,
                    title: 'HOME',
                    onPress: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    number: 0,
                  ),
                  buildAppBarMenu(
                    context,
                    title: 'EVENT THEME',
                    onPress: () async {
                      setState(() {
                        index = 1;
                      });
                      await controller.animateToPage(
                        1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInSine,
                      );
                    },
                    number: 1,
                  ),
                  buildAppBarMenu(
                    context,
                    title: 'OUR PURPOSE',
                    onPress: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    number: 2,
                  ),
                  buildAppBarMenu(
                    context,
                    title: 'ABOUT US',
                    onPress: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    number: 3,
                  ),
                  buildAppBarMenu(
                    context,
                    title: 'CONTACT US',
                    onPress: () {
                      setState(() {
                        index = 4;
                      });
                    },
                    number: 4,
                  ),
                ],
              ),
            ]),
            EventTheme(),
          ],
        ),
      ),
    );
  }

  Padding buildAppBarMenu(BuildContext context, {String title, Function onPress, int number}) {
    return Padding(
      padding: EdgeInsets.only(
          top: 16,
          right: ResponsiveWidget.isMediumScreen(context)
              ? 16
              : ResponsiveWidget.isLargeScreen(context)
                  ? 90
                  : 5),
      child: MaterialButton(
        onPressed: onPress,
        child: Text(
          title,
          style: GoogleFonts.barlow(
            color: index == number ? huesYellow : Colors.black,
            fontWeight: index == number ? FontWeight.bold : FontWeight.w500,
            fontSize: index == number
                ? (ResponsiveWidget.isLargeScreen(context)
                    ? 35
                    : (ResponsiveWidget.isMediumScreen(context))
                        ? 28
                        : 18)
                : ResponsiveWidget.isLargeScreen(context)
                    ? 25
                    : (ResponsiveWidget.isMediumScreen(context))
                        ? 20
                        : 12,
          ),
        ),
      ),
    );
  }
}
