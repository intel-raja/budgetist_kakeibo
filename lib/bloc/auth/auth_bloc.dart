import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budgetist_kakeibo/repo/user_repo.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(Authinit());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is LoginIt) {
      final bool isSignedIn = await UserRepo.userissignedin();
      if (isSignedIn) {
        print('auth');
        yield Auth();
      } else {
        print('UnAuth');
        yield UnAuth();
      }
    }
  }
}
