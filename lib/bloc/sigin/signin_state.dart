part of 'signin_bloc.dart';

abstract class SigninState extends Equatable {
  const SigninState();

  @override
  List<Object> get props => [];
}

class SigninInitial extends SigninState {}

class SigninLoading extends SigninState {}

class SigninFinised extends SigninState {}

class SigninFailure extends SigninState {
  final String error;

  const SigninFailure({required this.error});

  @override
  List<Object> get props => [error];
}
