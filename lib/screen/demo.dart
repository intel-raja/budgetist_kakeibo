import 'package:budgetist_kakeibo/resourse/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {
          try {
            Server.signup('itsme@gmail.com', 'password', 'name');
          } catch (e) {
            print(e);
          }
        },
        color: Colors.amber,
      ),
    );
  }
}
