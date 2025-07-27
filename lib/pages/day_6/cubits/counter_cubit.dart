import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  
  CounterCubit() : super(12);

  void increment() {
    print('Incrementing counter from $state to ${state + 1}');
    emit(state + 1);
  }
  
  void decrement() => emit(state - 1);

  void reset() => emit(12);
}