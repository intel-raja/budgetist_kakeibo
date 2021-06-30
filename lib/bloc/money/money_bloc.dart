import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budgetist_kakeibo/models/wallet.dart';
import 'package:equatable/equatable.dart';

part 'money_event.dart';

class MoneyBloc extends Bloc<MoneyEvent, List<Wallet>> {
  MoneyBloc() : super([]);

  @override
  Stream<List<Wallet>> mapEventToState(
    MoneyEvent event,
  ) async* {
    if (event is AddingList) {
      List<Wallet> wallet = event.wallet;
      yield state..addAll(wallet);
    }
  }
}
