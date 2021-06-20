import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SigninScreen - FRAME

    return Container(
      width: 375,
      height: 812,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 155,
              left: 31,
              child: Text(
                'Email-ID',
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
            top: 254,
            left: 31,
            child: Text(
              'Password',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(101, 0, 252, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 763,
            left: 53,
            child: Text(
              'Don’t have a account?',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(101, 0, 252, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 756,
            left: 247,
            child: Text(
              'Sign up',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(101, 0, 252, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 24,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 193,
            left: 31,
            child: Container(
                width: 321,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 2,
                  ),
                )),
          ),
          Positioned(
            top: 292,
            left: 31,
            child: Container(
              width: 321,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            top: 396,
            left: 123,
            child: Container(
              width: 137,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Color.fromRGBO(101, 0, 252, 1),
              ),
            ),
          ),
          Positioned(
            top: 407,
            left: 163,
            child: Text(
              'Sign in',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 544,
            left: 54,
            child: Container(
              width: 276,
              height: 146,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/132181.png'),
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),
          Positioned(
            top: 72,
            left: 31,
            child: Text(
              'Sign in',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(101, 0, 252, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 30,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
        ],
      ),
    );
  }
}
