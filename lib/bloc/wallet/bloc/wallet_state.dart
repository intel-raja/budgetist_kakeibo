part of 'wallet_bloc.dart';

abstract class WalletState extends Equatable {
  const WalletState();

  @override
  List<Object> get props => [];
}

class WalletInitial extends WalletState {}

class WalletLoading extends WalletState {}

class WalletFinised extends WalletState {
  final List<Wallet> wallet;

  const WalletFinised({required this.wallet});

  @override
  List<Object> get props => [wallet];
}

class WalletFailure extends WalletState {
  final String error;

  const WalletFailure({required this.error});

  @override
  List<Object> get props => [error];
}
