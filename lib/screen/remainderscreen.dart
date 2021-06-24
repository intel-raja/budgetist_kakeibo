import 'package:flutter/material.dart';

class RemainderScreen extends StatelessWidget {
  const RemainderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reminder',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Futura Md BT',
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
