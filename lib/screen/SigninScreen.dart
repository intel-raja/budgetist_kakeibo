import 'package:flutter/material.dart';

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
          Transform.translate(
            offset: Offset(48.0, 816.0),
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
          Transform.translate(
            offset: Offset(37.0, 562.0),
            child:
                // Adobe XD layer: 'pic1' (shape)
                Container(
              width: 340.0,
              height: 180.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/signinimage.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(124.0, 399.0),
            child:
                // Adobe XD layer: 'Rectangle sign in' (shape)
                Container(
              width: 166.0,
              height: 49.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xff6500fc),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(170.0, 409.0),
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
          Transform.translate(
            offset: Offset(36.0, 297.0),
            child:
                // Adobe XD layer: 'Rectangle pass' (shape)
                Container(
              width: 342.0,
              height: 52.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: TextField(
                controller: _emailcontroller,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(36.0, 256.0),
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
          Transform.translate(
            offset: Offset(36.0, 192.0),
            child:
                // Adobe XD layer: 'Rectangle email' (shape)
                Container(
              width: 342.0,
              height: 52.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(36.0, 151.0),
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
          Transform.translate(
            offset: Offset(36.0, 56.0),
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
