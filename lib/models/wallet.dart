import 'package:equatable/equatable.dart';

class Wallet extends Equatable {
  final String name;
  final String userid;
  final int amount;
  final int itemNo;
  final int month;
  final String createdTime;

  Wallet(
      {required this.name,
      required this.userid,
      required this.amount,
      required this.itemNo,
      required this.month,
      required this.createdTime});

  @override
  String toString() {
    return 'Wallet{name: $name, userid: $userid, amount: $amount, itemNo: $itemNo, createdDateTime: $createdTime, month: $month, ';
  }

  static Wallet fromJson(dynamic json) {
    return Wallet(
      name: json['name'] as String,
      userid: json['userid'] as String,
      amount: json['amount'] as int,
      itemNo: json['itemNo'] as int,
      month: json['month'] as int,
      createdTime: json['time'] as String,
    );
  }

  @override
  List<Object?> get props => [name, userid, amount, itemNo, month, createdTime];
}
