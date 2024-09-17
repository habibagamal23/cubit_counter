import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0; // Private counter value

  // Increment method
  void increment() {
    counter++;
    emit(CounterIncremented()); // Emit the state without the value
  }

  // Decrement method
  void decrement() {
    counter--;
    emit(CounterDecremented()); // Emit the state without the value
  }
}
