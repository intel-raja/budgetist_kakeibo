import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailcontroller = TextEditingController();
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
                fontFamily: 'segeo ui',
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
                    child: TextField(
                      controller: emailcontroller,
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
            Pin(size: 78.0, middle: 0.8215),
            Pin(size: 32.0, end: 90.0),
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
          Pinned.fromPins(
            Pin(start: 13.0, end: 13.0),
            Pin(size: 184.0, middle: 0.7293),
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
