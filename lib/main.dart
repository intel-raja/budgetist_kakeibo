import 'package:budgetist_kakeibo/bloc/auth/auth_bloc.dart';
import 'package:budgetist_kakeibo/routes.dart';
import 'package:budgetist_kakeibo/screen/SigninScreen.dart';
import 'package:budgetist_kakeibo/screen/homepage.dart';
import 'package:budgetist_kakeibo/screen/lodingscreen.dart';

import 'package:budgetist_kakeibo/screen/signupscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    BlocProvider<AuthBloc>(
      create: (context) => AuthBloc()..add(LoginIt()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budgetist-kakeibo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: {
        Routes.initial: (context) => Signup(),
        Routes.initial: (content) {
          return BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is Authinit) {
                print('loading main');
                return LodingScreen();
              } else if (state is Auth) {
                print('auth main');
                return HomepageWidget();
              } else {
                print('unauth main');
                return Signin();
              }
            },
          );
        },
        Routes.signin: (content) => Signin(),
        Routes.signup: (content) => Signup(),
        Routes.home: (content) => HomepageWidget(),
      },
    );
  }
}
