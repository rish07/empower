import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../responsive_widget.dart';

class CollaborationPartners extends StatefulWidget {
  @override
  _CollaborationPartnersState createState() => _CollaborationPartnersState();
}

class _CollaborationPartnersState extends State<CollaborationPartners> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: ResponsiveWidget.isMediumScreen(context) ? 32 : 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Collaboration Partners',
            style: GoogleFonts.barlow(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  height: size.height * 0.1,
                  width: size.width * 0.03,
                  child: Image.asset(
                    'web/assets/mukti_final.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/psychoflakes.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.13,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/soulitude.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/youniverse.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/videre.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  height: size.height * 0.1,
                  width: size.width * 0.03,
                  child: Image.asset(
                    'web/assets/zentered minds.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/girl up.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/khushi_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/logo (1).png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset(
                    'web/assets/Horizon_transparent-logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                height: size.height * 0.1,
                width: size.width * 0.03,
                child: Image.asset(
                  'web/assets/onelife.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: size.height * 0.1,
                width: size.width * 0.1,
                child: Image.asset(
                  'web/assets/MUSIC CLUB POSTER LOGO 2020 black.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
