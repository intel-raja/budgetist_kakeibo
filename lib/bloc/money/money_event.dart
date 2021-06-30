part of 'money_bloc.dart';

abstract class MoneyEvent extends Equatable {
  const MoneyEvent();

  @override
  List<Object> get props => [];
}

class AddingList extends MoneyEvent {
  final List<Wallet> wallet;

  const AddingList({required this.wallet});

  @override
  List<Object> get props => [wallet];
}
