import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height, //812
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Stack(
        children: <Widget>[
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
            top: .28 * size.height,
            left: 0,
            child: Container(
              height: .72 * size.height,
              width: size.width,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return TeamMemberWidget(size: size);
                },
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 30,
            child: Text(
              'Manage profiles',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(101, 0, 252, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            top: .20 * size.height,
            left: 30,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Create teams',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //   top: .20 * size.height,
          //   left: 30,
          //   child:
          // ),
        ],
      ),
    ));
  }
}

class TeamMemberWidget extends StatelessWidget {
  const TeamMemberWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Container(
        width: size.width,
        height: 130,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: size.width - 30,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 0.30000001192092896),
                    ))),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Tharun',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 40,
                left: 30,
                child: Text(
                  'Monthly Income',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 18,
                  ),
                )),
            Positioned(
              top: 70,
              left: 50,
              child: Text(
                'Rs. 25,000',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 18,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: VerticalDivider(
                color: Color.fromRGBO(196, 196, 196, 1),
                indent: 45,
                endIndent: 30,
                width: 10,
                thickness: 2,
              ),
            ),
            Positioned(
                top: 40,
                left: (size.width / 2) + 10,
                child: Text(
                  'Monthly Expenses',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 18,
                  ),
                )),
            Positioned(
                top: 70,
                left: (size.width / 2) + 50,
                child: Text(
                  'Rs. 1000',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 18,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
