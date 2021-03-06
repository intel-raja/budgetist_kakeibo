import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budgetist_kakeibo/bloc/auth/auth_bloc.dart';
import 'package:budgetist_kakeibo/repo/user_repo.dart';
import 'package:equatable/equatable.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthBloc authBloc;
  SignupBloc({required this.authBloc}) : super(SignupInitial());

  @override
  Stream<SignupState> mapEventToState(
    SignupEvent event,
  ) async* {
    if (event is SignupPressed) {
      yield SignupLoading();

      try {
        final result = await UserRepo.usersignup(
          event.email,
          event.password,
          event.name,
        );
        print(result);
        authBloc.add(LoginIt());
        yield SignupFinised(massage: result);
      } catch (e) {
        yield SignupFailure(error: e.toString());
      }
    }
  }
}
