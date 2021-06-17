import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({
    Key? key,
  }) : super(key: key);
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
          Transform.translate(
            offset: Offset(65.0, 697.0),
            child:
                // Adobe XD layer: 'Don’t have a accoun…' (text)
                SizedBox(
              width: 179.0,
              height: 28.0,
              child: Text(
                'Don’t have a account? ',
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
            offset: Offset(119.0, 325.0),
            child: SizedBox(
              width: 138.0,
              height: 40.0,
              child:
                  // Adobe XD layer: 'Sign in button' (group)
                  Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Rectangle 2' (shape)
                  Container(
                    width: 138.0,
                    height: 40.0,
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
                  Transform.translate(
                    offset: Offset(30.0, 2.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontFamily: 'segeo ui',
                        fontSize: 26,
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
          ),
          Transform.translate(
            offset: Offset(44.0, 250.0),
            child:
                // Adobe XD layer: 'Rectangle 15' (shape)
                Container(
              width: 283.0,
              height: 43.0,
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
          Transform.translate(
            offset: Offset(44.0, 184.0),
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
                ],
              ),
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
          Transform.translate(
            offset: Offset(244.0, 690.0),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'segeo ui',
                fontSize: 24,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(13.0, 458.0),
            child:
                // Adobe XD layer: '13218' (shape)
                Container(
              width: 349.0,
              height: 184.0,
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
