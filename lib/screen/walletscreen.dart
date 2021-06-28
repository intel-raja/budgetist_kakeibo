import 'package:budgetist_kakeibo/models/user.dart';
import 'package:budgetist_kakeibo/routes.dart';
import 'package:budgetist_kakeibo/screen/widget.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  void initState() {
    super.initState();
    print('wallet screen');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Figma Flutter Generator WalletScreen - FRAME

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.items);
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Color.fromRGBO(101, 0, 252, 1),
        ),
      ),
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
              top: .60 * size.height,
              left: 10,
              child: SpentWidget(size: size),
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
              child: Divider(
                  height: 300,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  thickness: 1),
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
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.profile);
                },
                child: Container(
                  width: size.width - 100,
                  child: Text(
                    User.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(101, 0, 252, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
