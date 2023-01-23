import 'package:bloc/bloc.dart';
import '../events/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(1);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() {
    state <= 0 ? emit(0) : emit(state - 1);
  }
}
