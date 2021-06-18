import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 100.0, start: 36.0),
            Pin(size: 39.0, start: 56.0),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Futura Md BT',
                fontSize: 32,
                color: const Color(0xff1d2e70),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 48.0, end: 47.0),
            Pin(size: 34.0, end: 46.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Futura Md BT',
                  fontSize: 20,
                  color: const Color(0xff1d2e70),
                ),
                children: [
                  TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 36.0),
            Pin(size: 52.0, middle: 0.2275),
            child: SvgPicture.string(
              _svg_ndy9oo,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 36.0),
            Pin(size: 52.0, middle: 0.3519),
            child: SvgPicture.string(
              _svg_vzvf58,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 102.0, start: 36.0),
            Pin(size: 29.0, middle: 0.1742),
            child: Text(
              'E-mail ID',
              style: TextStyle(
                fontFamily: 'Futura Md BT',
                fontSize: 24,
                color: const Color(0xff1d2e70),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 102.0, start: 36.0),
            Pin(size: 29.0, middle: 0.2953),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Futura Md BT',
                fontSize: 24,
                color: const Color(0xff1d2e70),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 166.0, middle: 0.5),
            Pin(size: 49.0, middle: 0.4711),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xff6500fc),
              ),
              
          ),
          Pinned.fromPins(
            Pin(size: 75.0, middle: 0.5015),
            Pin(size: 29.0, middle: 0.4717),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Futura Md BT',
                fontSize: 24,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 36.0),
            Pin(size: 181.0, middle: 0.786),
            child:
                // Adobe XD layer: '13218' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/signinimage.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ndy9oo =
    '<svg viewBox="36.0 192.0 342.0 52.0" ><path transform="translate(36.0, 192.0)" d="M 15 0 L 327 0 C 335.2842712402344 0 342 6.715728759765625 342 15 L 342 37 C 342 45.28427124023438 335.2842712402344 52 327 52 L 15 52 C 6.715728759765625 52 0 45.28427124023438 0 37 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="#ffffff" stroke="#707070" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vzvf58 =
    '<svg viewBox="36.0 297.0 342.0 52.0" ><path transform="translate(36.0, 297.0)" d="M 15 0 L 327 0 C 335.2842712402344 0 342 6.715728759765625 342 15 L 342 37 C 342 45.28427124023438 335.2842712402344 52 327 52 L 15 52 C 6.715728759765625 52 0 45.28427124023438 0 37 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="#ffffff" stroke="#707070" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
