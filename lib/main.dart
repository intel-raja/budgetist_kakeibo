import 'package:budgetist_kakeibo/screen/SigninScreen.dart';
import 'package:budgetist_kakeibo/screen/signupscreen.dart';

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
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        body: SigninScreen(),
      ),
    );
  }
}
