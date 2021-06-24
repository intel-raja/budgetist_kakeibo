import 'package:budgetist_kakeibo/bloc/auth/auth_bloc.dart';
import 'package:budgetist_kakeibo/bloc/signup/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:string_validator/string_validator.dart';

import '../routes.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SignupBloc>(
        create: (context) => SignupBloc(
          authBloc: BlocProvider.of<AuthBloc>(context),
        ),
        child: SignupScreen(),
      ),
    );
  }
}

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordcont = TextEditingController();
  TextEditingController emailcont = TextEditingController();
  bool showpassword = true;

  TextEditingController namecont = TextEditingController();
  @override
  void dispose() {
    emailcont.dispose();
    passwordcont.dispose();
    namecont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(state.error), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }

        if (state is SignupLoading) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                duration: Duration(minutes: 5),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('data processing'),
                    Icon(Icons.hourglass_top)
                  ],
                ),
                backgroundColor: Colors.amber,
              ),
            );
        }
        if (state is SignupFinised) {
          Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Success'), Icon(Icons.thumb_up)],
                ),
                backgroundColor: Colors.green,
              ),
            );
        }
      },
      child: Container(
        height: size.height, //815
        width: size.width, //375
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Form(
          key: _formKey,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: size.height - 70,
                left: 250,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signin);
                  },
                  child: Text(
                    'Sign in',
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
                top: size.height - 56,
                left: 50,
                child: Text(
                  'Already have a account?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(101, 0, 252, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                top: .7 * size.height,
                left: 70,
                child: Container(
                  width: size.width - 140,
                  height: .20 * size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Pic.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: .60 * size.height,
                left: (size.width / 2) - 70,
                child: Container(
                  width: 140,
                  height: 40,
                  child: BlocBuilder<SignupBloc, SignupState>(
                    builder: (context, state) {
                      return Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: InkWell(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    BlocProvider.of<SignupBloc>(context).add(
                                      SignupPressed(
                                        email: emailcont.text,
                                        password: passwordcont.text,
                                        name: namecont.text,
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  width: 140,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    color: Color.fromRGBO(101, 0, 252, 1),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Sign up',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Futura Md BT',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: .54 * size.height,
                left: size.width - 150,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      showpassword = showpassword == true ? false : true;
                    });
                  },
                  child: Text(
                    'show password',
                    style: TextStyle(
                      color: Color.fromRGBO(101, 0, 252, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 15,
                      height: 1,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: .49 * size.height,
                  left: 30,
                  child: Container(
                      width: size.width - 60,
                      height: 45,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          } else {
                            bool strongPassword = isLength(value, 6, 20);
                            if (strongPassword == false) {
                              return 'password length between 6 to 20';
                            }
                          }
                          return null;
                        },
                        obscureText: showpassword,
                        //  autocorrect: false,
                        style: TextStyle(fontSize: 20),
                        controller: passwordcont,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          width: 2,
                        ),
                      ))),
              Positioned(
                  top: .46 * size.height,
                  left: 27,
                  child: Text(
                    'Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(101, 0, 252, 1),
                        fontFamily: 'Futura Md BT',
                        fontSize: 18,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: .36 * size.height,
                  left: 30,
                  child: Container(
                      width: size.width - 60,
                      height: 45,
                      child: TextFormField(
                        controller: emailcont,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email id';
                          } else {
                            bool emailFormat = isEmail(value);
                            if (emailFormat == false) {
                              return 'please enter vaild email id';
                            }
                          }
                          return null;
                        },
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          width: 2,
                        ),
                      ))),
              Positioned(
                  top: .33 * size.height,
                  left: 30,
                  child: Text(
                    'Email-ID',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(101, 0, 252, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 18,
                    ),
                  )),
              Positioned(
                  top: 0.23 * size.height,
                  left: 30,
                  child: Container(
                      width: size.width - 60,
                      height: 45,
                      child: TextFormField(
                        controller: namecont,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter name';
                          } else {
                            bool nameFormat = isLength(value, 3, 25);
                            if (nameFormat == false) {
                              return 'please enter name with more than 3 letters';
                            }
                          }
                          return null;
                        },
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          width: 2,
                        ),
                      ))),
              Positioned(
                top: .2 * size.height,
                left: 30,
                child: Text(
                  'Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(101, 0, 252, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 18,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              Positioned(
                top: 72,
                left: 30,
                child: Text(
                  'Sign up',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(101, 0, 252, 1),
                    fontFamily: 'Futura Md BT',
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
