part of 'wallet_bloc.dart';

abstract class WalletEvent extends Equatable {
  const WalletEvent();

  @override
  List<Object> get props => [];
}

class WalletStarted extends WalletEvent {
  final String month;

  const WalletStarted({required this.month});
}
