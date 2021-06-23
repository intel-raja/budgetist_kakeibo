import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomepageWidget extends StatefulWidget {
  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Figma Flutter Generator HomepageWidget - FRAME

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 125,
              left: 0,
              child: Container(
                width: size.width,
                height: size.height - 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  color: Color.fromRGBO(101, 0, 252, 1),
                ),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 148,
              child: Text(
                'Tap to add',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
            Positioned(
              top: 733,
              left: 162,
              child: Container(
                width: 50,
                height: 50,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(50, 50)),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 618,
              left: 14,
              child: Container(
                width: 347,
                height: 92,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 347,
                        height: 92,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Color.fromRGBO(
                              255, 255, 255, 0.30000001192092896),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 31,
                      left: 19,
                      child: Text(
                        'Salary',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                      top: 17,
                      left: 215,
                      child: Text(
                        'Rs.30,000',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 26,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 215,
                      child: Text(
                        'Aug',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 20,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Transform.rotate(
                        angle: -89.99999749552173 * (math.pi / 180),
                        child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            thickness: 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 513,
              left: 14,
              child: Container(
                width: 347,
                height: 92,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 347,
                        height: 92,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Color.fromRGBO(
                              255, 255, 255, 0.30000001192092896),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 31,
                      left: 19,
                      child: Text(
                        'Food',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                      top: 17,
                      left: 215,
                      child: Text(
                        'Rs.600',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 26,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 215,
                      child: Text(
                        'Aug',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 20,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Transform.rotate(
                        angle: -89.99999749552173 * (math.pi / 180),
                        child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            thickness: 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 471,
              left: 33,
              child: Text(
                'Last transactions',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
            Positioned(
              top: 295,
              left: 194,
              child: Container(
                width: 167,
                height: 123,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 167,
                        height: 123,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(101, 0, 252, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 23,
                      left: 10,
                      child: Text(
                        'Expenses',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                      top: 61,
                      left: 10,
                      child: Text(
                        'Rs. 10,000',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
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
              ),
            ),
            Positioned(
              top: 295,
              left: 14,
              child: Container(
                width: 167,
                height: 123,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 167,
                        height: 123,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(101, 0, 252, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 23,
                      left: 10,
                      child: Text(
                        'Income',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Futura Md BT',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    Positioned(
                        top: 61,
                        left: 10,
                        child: Text(
                          'Rs. 30,000',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Futura Md BT',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 275,
              left: 187,
              child: Transform.rotate(
                angle: -89.99999712676446 * (math.pi / 180),
                child: Divider(
                    color: Color.fromRGBO(255, 255, 255, 1), thickness: 1),
              ),
            ),
            Positioned(
              top: 176,
              left: 289,
              child: Container(
                width: 50,
                height: 50,
                child: Stack(children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(50, 50)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 13,
                    left: 14,
                    child: Icon(Icons.refresh),
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 201,
              left: 33,
              child: Text(
                'Rs. 3,00,000',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 30,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 163,
              left: 33,
              child: Text(
                'Balance',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
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
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
