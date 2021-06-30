part of 'item_bloc.dart';

abstract class ItemEvent extends Equatable {
  const ItemEvent();

  @override
  List<Object> get props => [];
}

class ItemAdded extends ItemEvent {
  final String username;
  final String userid;
  final int amount;
  final int itemNo;
  final String createdTime;
  final int monthAndYear;

  const ItemAdded({
    required this.userid,
    required this.username,
    required this.amount,
    required this.itemNo,
    required this.monthAndYear,
    required this.createdTime,
  });

  @override
  List<Object> get props =>
      [username, amount, itemNo, createdTime, monthAndYear];
}
