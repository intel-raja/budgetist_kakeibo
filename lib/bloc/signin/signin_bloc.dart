import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budgetist_kakeibo/bloc/auth/auth_bloc.dart';
import 'package:budgetist_kakeibo/repo/user_repo.dart';
import 'package:equatable/equatable.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final AuthBloc authBloc;

  SigninBloc({required this.authBloc}) : super(SigninInitial());

  @override
  Stream<SigninState> mapEventToState(
    SigninEvent event,
  ) async* {
    if (event is SigninPressed) {
      yield SigninLoading();

      try {
        await UserRepo.usersignin(
          event.email,
          event.password,
        );
        authBloc.add(LoginIt());
        yield SigninFinised();
      } catch (e) {
        yield SigninFailure(error: e.toString());
      }
    }
  }
}
