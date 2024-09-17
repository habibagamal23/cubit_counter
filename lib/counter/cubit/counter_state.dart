part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {

}

final class CounterIncremented extends CounterState {}


final class CounterDecremented extends CounterState {}