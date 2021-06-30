part of 'wallet_bloc.dart';

abstract class WalletEvent extends Equatable {
  const WalletEvent();

  @override
  List<Object> get props => [];
}

class WalletStarted extends WalletEvent {
  final int month;

  const WalletStarted({required this.month});
  @override
  List<Object> get props => [month];
}
