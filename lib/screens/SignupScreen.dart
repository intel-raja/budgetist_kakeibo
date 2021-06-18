import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailcontroller = TextEditingController();
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
          Pinned.fromPins(
            Pin(size: 138.0, middle: 0.4895),
            Pin(size: 40.0, middle: 0.4948),
            child:
                // Adobe XD layer: 'Sign up button' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 2' (shape)
                      SvgPicture.string(
                    _svg_h2gs10,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 32.0, end: 32.0),
                  Pin(start: 3.0, end: 4.0),
                  child:
                      // Adobe XD layer: 'Sign up' (text)
                      Text(
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 46.0, end: 46.0),
            Pin(size: 43.0, middle: 0.4148),
            child:
                // Adobe XD layer: 'Password field' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 16' (shape)
                      Container(
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
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 46.0, end: 46.0),
            Pin(size: 43.0, middle: 0.3277),
            child:
                // Adobe XD layer: 'Email field' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 15' (shape)
                      Container(
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
                    child: TextField(
                      controller: _emailcontroller,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 46.0, end: 46.0),
            Pin(size: 43.0, middle: 0.2393),
            child:
                // Adobe XD layer: 'Full name field' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 13' (shape)
                      Container(
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
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 106.0, start: 36.0),
            Pin(size: 40.0, start: 105.0),
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
          Pinned.fromPins(
            Pin(size: 196.0, middle: 0.324),
            Pin(size: 28.0, end: 91.0),
            child:
                // Adobe XD layer: 'Already have a acco…' (text)
                Text(
              'Already have a account? ',
              style: TextStyle(
                fontFamily: 'segeo ui',
                fontSize: 18,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 84.0, end: 83.0),
            Pin(size: 189.0, middle: 0.7608),
            child:
                // Adobe XD layer: '3568988 1' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/signupimage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 72.0, end: 49.0),
            Pin(size: 32.0, end: 95.0),
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
