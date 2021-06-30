import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budgetist_kakeibo/models/balance.dart';
import 'package:budgetist_kakeibo/models/wallet.dart';
import 'package:equatable/equatable.dart';

part 'balance_event.dart';

class BalanceBloc extends Bloc<BalanceEvent, Balance> {
  BalanceBloc() : super(Balance(balance: 0, income: 0, expenses: 0));

  @override
  Stream<Balance> mapEventToState(
    BalanceEvent event,
  ) async* {
    if (event is Calculate) {
      final wallet = event.wallet;
      wallet.forEach((element) {
        if (element.itemNo >= 22) {
          state.income = element.amount + state.income;
        }
        if (element.itemNo <= 22) {
          state.expenses = element.amount + state.expenses;
        }
      });
      state.balance = state.income - state.expenses;
      yield state;
    }
  }
}
