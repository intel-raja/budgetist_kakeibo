import 'package:budgetist_kakeibo/models/user.dart';
import 'package:budgetist_kakeibo/repo/user_repo.dart';

import 'package:budgetist_kakeibo/routes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width, //375
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
                  ),
                  color: Color.fromRGBO(101, 0, 252, 1),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 30,
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
            Positioned(
              top: .65 * size.height,
              left: 30,
              child: Container(
                width: size.width - 60,
                height: .33 * size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/money.png'),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 220,
                left: 30,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Categories',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )),
            Positioned(
              top: 160,
              left: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, Routes.teams);
                },
                child: Text(
                  'Manage Teams',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 280,
                left: 30,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Remainder',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )),
            Positioned(
              top: 340,
              left: 30,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 30,
              child: TextButton(
                onPressed: () {
                  try {
                    UserRepo.userdeleteSession();
                    Navigator.popAndPushNamed(context, Routes.signin);
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('bye, see you later'),
                              Icon(Icons.logout)
                            ],
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );
                  } catch (e) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text(e.toString()), Icon(Icons.error)],
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
                  }
                },
                child: Text(
                  'Logout',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
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
