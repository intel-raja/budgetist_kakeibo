import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ProfileScreen - FRAME

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(top: 123, left: 0, child: null),
          Positioned(
              top: 56,
              left: 33,
              child: Text(
                'Username',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(101, 0, 252, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 63,
              left: 245,
              child: Text(
                'Edit profile',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(101, 0, 252, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 219,
              left: 38,
              child: Text(
                'Categories',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 161,
              left: 38,
              child: Text(
                'Manage profiles',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 277,
              left: 38,
              child: Text(
                'Settings',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 335,
              left: 38,
              child: Text(
                'About',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 393,
              left: 38,
              child: Text(
                'Logout',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
            top: 67,
            left: 225,
            child: SvgPicture.asset('assets/images/vector.svg',
                semanticsLabel: 'vector'),
          ),
        ]));
  }
}
