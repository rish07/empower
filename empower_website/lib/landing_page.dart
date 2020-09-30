import 'package:empower/landing_ui/about_us.dart';
import 'package:empower/landing_ui/about_us_phone1.dart';
import 'package:empower/landing_ui/contact_us.dart';
import 'package:empower/landing_ui/event_flow.dart';
import 'package:empower/landing_ui/event_flow_phone1.dart';
import 'package:empower/landing_ui/event_theme_phone1.dart';
import 'package:empower/landing_ui/event_theme_phone2.dart';
import 'package:empower/landing_ui/event_theme_web.dart';
import 'package:empower/landing_ui/home_page.dart';
import 'package:empower/landing_ui/purpose.dart';
import 'package:empower/landing_ui/purpose_phone1.dart';
import 'package:empower/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'constants.dart';
import 'landing_ui/about_us_phone2.dart';
import 'landing_ui/event_flow_phone2.dart';
import 'landing_ui/purpose_phone2.dart';

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
      endDrawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              buildDrawerItems(title: 'Home', index: 0),
              buildDrawerItems(title: 'Event Theme', index: 1),
              buildDrawerItems(title: 'Event Flow', index: 3),
              buildDrawerItems(title: 'Our Purpose', index: 5),
              buildDrawerItems(title: 'About us', index: 7),
              buildDrawerItems(title: 'Contact us', index: 9),
            ],
          ),
        ),
      ),
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
          children: !ResponsiveWidget.isSmallScreen(context)
              ? [
                  Stack(children: [
                    HomePage(),
                    Container(
                      height: size.height * 0.1,
                      child: AppBar(
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
                            onPress: () async {
                              setState(() {
                                index = 3;
                              });
                              await controller.animateToPage(
                                3,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInSine,
                              );
                            },
                            number: 2,
                          ),
                          buildAppBarMenu(
                            context,
                            title: 'ABOUT US',
                            onPress: () async {
                              setState(() {
                                index = 3;
                              });
                              await controller.animateToPage(
                                4,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInSine,
                              );
                            },
                            number: 3,
                          ),
                          buildAppBarMenu(
                            context,
                            title: 'CONTACT US',
                            onPress: () async {
                              setState(() {
                                index = 4;
                              });
                              await controller.animateToPage(
                                5,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInSine,
                              );
                            },
                            number: 4,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ResponsiveWidget.isMediumScreen(context)
                              ? 50.0
                              : ResponsiveWidget.isLargeScreen(context)
                                  ? 80
                                  : 0),
                      child: Image.asset(
                        'logo.gif',
                        fit: BoxFit.contain,
                        height: ResponsiveWidget.isMediumScreen(context)
                            ? 120
                            : ResponsiveWidget.isLargeScreen(context)
                                ? 170
                                : 0,
                        width: ResponsiveWidget.isMediumScreen(context)
                            ? 120
                            : ResponsiveWidget.isLargeScreen(context)
                                ? 170
                                : 0,
                      ),
                    ),
                  ]),
                  EventTheme(),
                  EventFlow(),
                  Purpose(),
                  AboutUs(),
                  ContactUs(),
                ]
              : [
                  Stack(children: [
                    HomePage(),
                    Container(
                      height: size.height * 0.1,
                      child: AppBar(
                        leading: Image.asset('logo.gif'),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        iconTheme: new IconThemeData(color: Colors.black),
                        title: Text(
                          'Huesofthemind',
                          style: GoogleFonts.justAnotherHand(
                            fontSize: 35,
                            color: huesYellow,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ResponsiveWidget.isMediumScreen(context)
                              ? 50.0
                              : ResponsiveWidget.isLargeScreen(context)
                                  ? 80
                                  : 0),
                      child: Image.asset(
                        'logo.gif',
                        fit: BoxFit.contain,
                        height: ResponsiveWidget.isMediumScreen(context)
                            ? 120
                            : ResponsiveWidget.isLargeScreen(context)
                                ? 170
                                : 0,
                        width: ResponsiveWidget.isMediumScreen(context)
                            ? 120
                            : ResponsiveWidget.isLargeScreen(context)
                                ? 170
                                : 0,
                      ),
                    ),
                  ]),
                  EventThemePhone1(),
                  EventThemePhone2(),
                  EventFlowPhone1(),
                  EventFlowPhone2(),
                  PurposePhone1(),
                  //PurposePhone2(),
                  AboutUsPhone1(),
                  AboutUsPhone2(),
                  ContactUs(),
                ],
        ),
      ),
    );
  }

  Padding buildDrawerItems({String title, int index}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: ListTile(
        onTap: () async {
          setState(() {
            index = index;
          });
          Navigator.pop(context);
          await controller.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInSine,
          );
        },
        title: Text(
          title,
          style: GoogleFonts.barlow(
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
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
                  ? 60
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
