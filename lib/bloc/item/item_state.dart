part of 'item_bloc.dart';

abstract class ItemState extends Equatable {
  const ItemState();

  @override
  List<Object> get props => [];
}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemFinised extends ItemState {}

class ItemFailure extends ItemState {
  final String error;

  const ItemFailure({required this.error});

  @override
  List<Object> get props => [error];
}
