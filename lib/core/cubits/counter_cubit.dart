import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // Initial value
  CounterCubit() : super(0);

  //! Functions
  // Increase the value
  void increment() => emit(state + 1);
  // Decrease the value
  void decrement() => state > 0 ? emit(state - 1) : null;
}
