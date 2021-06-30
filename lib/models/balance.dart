import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Balance extends Equatable {
  int balance;
  int income;
  int expenses;

  Balance(
      {required this.balance, required this.income, required this.expenses});

  @override
  List<Object?> get props => [balance, income, expenses];
}
