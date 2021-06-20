import 'package:budgetist_kakeibo/screen/demo.dart';
import 'package:budgetist_kakeibo/screen/signinscreens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: DemoHome(),
      ),
    );
  }
}
