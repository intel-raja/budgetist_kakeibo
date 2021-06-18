part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SignupPressed extends SignupEvent {
  final String email;
  final String password;
  final String name;

  const SignupPressed(
      {required this.email, required this.password, required this.name});

  @override
  List<Object> get props => [email, password, name];
}
