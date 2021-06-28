import 'package:budgetist_kakeibo/models/user.dart';
import 'package:flutter/material.dart';

import '../routes.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        onPressed: () {
          Navigator.pushNamed(context, Routes.items);
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Color.fromRGBO(101, 0, 252, 1),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 30,
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
          Positioned(
            top: .15 * size.height,
            left: 0,
            child: Container(
              width: size.width,
              height: .85 * size.height,
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
            top: .19 * size.height,
            left: 30,
            child: Text(
              'Balance',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
              top: .23 * size.height,
              left: 30,
              child: Text(
                'Rs. 3,00,000',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 30,
                ),
              )),
          Positioned(
            top: .31 * size.height,
            left: 15,
            child: Container(
              width: (size.width / 2) - 14.5,
              height: (size.width / 2) - 14.5,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: (size.width / 2) - 14.5,
                          height: (size.width / 2) - 14.5,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(101, 0, 252, 1),
                          ))),
                  Positioned(
                    top: 25,
                    left: 10,
                    child: Text(
                      'Income',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Futura Md BT',
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: 10,
                      child: Text(
                        'Rs. 30,000',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Futura Md BT',
                          fontSize: 30,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            top: .31 * size.height,
            left: size.width / 2 + .5,
            child: Container(
              width: (size.width / 2) - 14.5,
              height: (size.width / 2) - 14.5,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: (size.width / 2) - 14.5,
                          height: (size.width / 2) - 14.5,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            color: Color.fromRGBO(101, 0, 252, 1),
                          ))),
                  Positioned(
                      top: 25,
                      left: 25,
                      child: Text(
                        'Expenses',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Futura Md BT',
                          fontSize: 24,
                        ),
                      )),
                  Positioned(
                      top: 60,
                      left: 25,
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
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            top: .19 * size.height,
            left: size.width - 100,
            child: FloatingActionButton(
              elevation: 20,
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(
                Icons.refresh,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
          Positioned(
            top: .31 * size.height,
            left: (size.width / 2) - .5,
            child: Container(
              width: 1,
              height: (size.width / 2) - 14.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Positioned(
            top: .58 * size.height,
            left: 30,
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
            top: .63 * size.height,
            left: 15,
            child: Container(
              height: .37 * size.height,
              width: size.width,
              child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: RecordCard(size: size, index: index),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class RecordCard extends StatefulWidget {
  const RecordCard({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  _RecordCardState createState() => _RecordCardState();
}

class _RecordCardState extends State<RecordCard> {
  @override
  Widget build(BuildContext context) {
    int index = widget.index + 1;
    return Container(
      width: widget.size.width - 30,
      height: 100,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: widget.size.width - 30,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(255, 255, 255, 0.30000001192092896),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 25,
            child: Container(
              width: 40,
              height: 40,
              child: Image(
                image: AssetImage(
                  'assets/images/Frame $index.png',
                ),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 75,
            child: Text(
              'Food',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: (widget.size.width / 2) + 30,
            child: Text(
              'Aug',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 20,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Me',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: (widget.size.width / 2) + 30,
            child: Text(
              'Rs.600',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
