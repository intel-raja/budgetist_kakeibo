import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:budgetist_kakeibo/repo/wallet_repo.dart';
import 'package:equatable/equatable.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc() : super(ItemInitial());

  @override
  Stream<ItemState> mapEventToState(
    ItemEvent event,
  ) async* {
    if (event is ItemAdded) {
      yield ItemLoading();

      try {
        final data = await WalletRepo.createdoc(
          event.username,
          event.amount,
          event.itemNo,
          event.monthAndYear,
          event.createdTime,
        );
        print(data);
        yield ItemFinised();
      } catch (e) {
        yield ItemFailure(error: e.toString());
      }
    }
  }
}
