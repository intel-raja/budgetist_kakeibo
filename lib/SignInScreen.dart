import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 90.0, start: 28.0),
            Pin(size: 35.0, start: 105.0),
            child:
                // Adobe XD layer: 'Sign in' (text)
                SingleChildScrollView(
                    child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            )),
          ),
          Pinned.fromPins(
            Pin(start: -1.0, end: 1.0),
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
            Pin(size: 179.0, middle: 0.3316),
            Pin(size: 28.0, end: 87.0),
            child:
                // Adobe XD layer: 'Don’t have a accoun…' (text)
                Text(
              'Don’t have a account? ',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 138.0, middle: 0.5021),
            Pin(size: 40.0, middle: 0.421),
            child:
                // Adobe XD layer: 'Sign in button' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 2' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffc700),
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
                Pinned.fromPins(
                  Pin(size: 78.0, middle: 0.5),
                  Pin(start: 2.0, end: 3.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: 'segeo ui',
                      fontSize: 26,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 48.0),
            Pin(size: 43.0, middle: 0.3251),
            child:
                // Adobe XD layer: 'Rectangle 15' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.5, color: const Color(0xff121212)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 48.0),
            Pin(size: 43.0, middle: 0.2393),
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
                          width: 1.5, color: const Color(0xff121212)),
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
            Pin(size: 126.0, start: 24.0),
            Pin(size: 52.0, start: 88.0),
            child:
                // Adobe XD layer: 'Sign in' (text)
                Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'segeo ui',
                fontSize: 34,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 23.0),
            Pin(size: 174.0, middle: 0.7618),
            child:
                // Adobe XD layer: '13218 1' (shape)
                SvgPicture.string(
              _svg_jkregq,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 72.0, middle: 0.8053),
            Pin(size: 32.0, end: 90.0),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Roboto',
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

const String _svg_jkregq =
    '<svg viewBox="24.0 486.0 328.0 174.0" ><defs><pattern id="image" patternUnits="userSpaceOnUse" width="4096.0" height="2166.0"><image xlink:href="assets/images/signinimage.png" x="0" y="0" width="4096.0" height="2166.0" /></pattern></defs><path transform="translate(24.0, 486.0)" d="M 0 0 L 328 0 L 328 174 L 0 174 L 0 0 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
