import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'Background' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(116.0, 382.0),
            child: SizedBox(
              width: 138.0,
              height: 40.0,
              child:
                  // Adobe XD layer: 'Sign up button' (group)
                  Stack(
                children: <Widget>[
                  SizedBox(
                    width: 138.0,
                    height: 40.0,
                    child: SvgPicture.string(
                      _svg_h2gs10,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(32.0, 3.0),
                    child:
                        // Adobe XD layer: 'Sign up' (text)
                        SizedBox(
                      width: 74.0,
                      height: 33.0,
                      child: Text(
                        'Sign up ',
                        style: TextStyle(
                          fontFamily: 'segeo ui',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          shadows: [
                            Shadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 4),
                              blurRadius: 8,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(46.0, 319.0),
            child: SizedBox(
              width: 283.0,
              height: 43.0,
              child:
                  // Adobe XD layer: 'Password field' (group)
                  Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Rectangle 16' (shape)
                  Container(
                    width: 283.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.5, color: const Color(0xff1d1d1d)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(46.0, 252.0),
            child: SizedBox(
              width: 283.0,
              height: 43.0,
              child:
                  // Adobe XD layer: 'Email field' (group)
                  Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Rectangle 15' (shape)
                  Container(
                    width: 283.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.5, color: const Color(0xff1d1d1d)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(46.0, 184.0),
            child: SizedBox(
              width: 283.0,
              height: 43.0,
              child:
                  // Adobe XD layer: 'Full name field' (group)
                  Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Rectangle 13' (shape)
                  Container(
                    width: 283.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.5, color: const Color(0xff1d1d1d)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(36.0, 105.0),
            child:
                // Adobe XD layer: 'Sign up' (text)
                Text(
              'Sign up',
              style: TextStyle(
                fontFamily: 'segeo ui',
                fontSize: 30,
                color: const Color(0xff1d1d1d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 693.0),
            child:
                // Adobe XD layer: 'Already have a acco…' (text)
                SizedBox(
              width: 196.0,
              height: 28.0,
              child: Text(
                'Already have a account? ',
                style: TextStyle(
                  fontFamily: 'segeo ui',
                  fontSize: 18,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(84.0, 474.0),
            child:
                // Adobe XD layer: '3568988 1' (shape)
                Container(
              width: 208.0,
              height: 189.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/signupimage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(254.0, 685.0),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'segeo ui',
                fontSize: 24,
                color: const Color(0xff000000),
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_h2gs10 =
    '<svg viewBox="111.0 382.0 138.0 40.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="8"/></filter></defs><path transform="translate(111.0, 382.0)" d="M 10 0 L 128 0 C 133.5228424072266 0 138 4.477152347564697 138 10 L 138 29.99999237060547 C 138 35.5228385925293 133.5228424072266 39.99999237060547 128 39.99999237060547 L 10 39.99999237060547 C 4.477152347564697 39.99999237060547 0 35.5228385925293 0 29.99999237060547 L 0 10 C 0 4.477152347564697 4.477152347564697 0 10 0 Z" fill="#ffc700" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
