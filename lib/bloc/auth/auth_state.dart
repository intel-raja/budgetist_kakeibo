part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthStarted extends AuthState {}

class UnAuth extends AuthState {}

class Auth extends AuthState {}
