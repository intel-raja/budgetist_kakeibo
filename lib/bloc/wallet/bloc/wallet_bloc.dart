import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budgetist_kakeibo/repo/user_repo.dart';
import 'package:equatable/equatable.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(WalletInitial());

  @override
  Stream<WalletState> mapEventToState(
    WalletEvent event,
  ) async* {
    if (event is WalletStarted) {
      yield WalletLoading();

      try {
        final result = await UserRepo.usercreatedoc(event.month);

        yield WalletFinised();
      } catch (e) {
        yield WalletFailure(error: e.toString());
      }
    }
  }
}
