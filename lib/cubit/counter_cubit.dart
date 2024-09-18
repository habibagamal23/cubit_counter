import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int conter = 0;

  void icremnet() {
    conter++;
    emit(CounterIncrement());
  }

  void dec() {
    conter--;
    emit(CounterDecremnt());
  }
}
