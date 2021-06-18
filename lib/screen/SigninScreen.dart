import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
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
            Pin(start: 37.0, end: 36.0),
            Pin(size: 181.0, middle: 0.786),
            child:
                // Adobe XD layer: 'pic1' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/signinimage.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 166.0, middle: 0.5),
            Pin(size: 49.0, middle: 0.4711),
            child:
                // Adobe XD layer: 'Rectangle sign in' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xff6500fc),
              ),
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
            Pin(start: 36.0, end: 36.0),
            Pin(size: 52.0, middle: 0.3519),
            child:
                // Adobe XD layer: 'Rectangle pass' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
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
            Pin(start: 36.0, end: 36.0),
            Pin(size: 52.0, middle: 0.2275),
            child:
                // Adobe XD layer: 'Rectangle email' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
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
        ],
      ),
    );
  }
}
