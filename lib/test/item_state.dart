part of 'item_cubit.dart';

@immutable
sealed class ItemState {}

final class ItemInitial extends ItemState {}

final class ItemLoading extends ItemState{}

final class Itemloaded extends ItemState{
  final List<Item> items;
  Itemloaded(this.items);
}

final class Itemfalier extends ItemState{
 final String error;
Itemfalier(this.error);
}

