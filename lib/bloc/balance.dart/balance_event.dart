part of 'balance_bloc.dart';

abstract class BalanceEvent extends Equatable {
  const BalanceEvent();

  @override
  List<Object> get props => [];
}

class Calculate extends BalanceEvent {
  final List<Wallet> wallet;

  const Calculate({required this.wallet});

  @override
  List<Object> get props => [wallet];
}
