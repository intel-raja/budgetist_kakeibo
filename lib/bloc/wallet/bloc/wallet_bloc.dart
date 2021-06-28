import 'dart:async';

import 'package:bloc/bloc.dart';

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
        yield WalletFinised();
      } catch (e) {
        yield WalletFailure(error: e.toString());
      }
    }
  }
}
