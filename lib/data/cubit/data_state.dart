part of 'data_cubit.dart';

@immutable
sealed class DataState {}

final class DataInitial extends DataState {}


final class DataLoaded extends DataState {}
