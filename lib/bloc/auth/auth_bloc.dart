import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budgetist_kakeibo/bloc/wallet/bloc/wallet_bloc.dart';
import 'package:budgetist_kakeibo/repo/user_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        WalletBloc().add(
          WalletStarted(month: 202106),
        );
        print('auth');

        yield Auth();
      } else {
        print('UnAuth');
        yield UnAuth();
      }
    }
  }
}
