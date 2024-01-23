part of 'counter_cubit.dart';

class CounterState extends Equatable {
  CounterState({
    required this.counterValue,
    required this.wasIncremented,
  });

  int counterValue;
  bool wasIncremented;

  @override
  List<Object> get props => [counterValue, wasIncremented];
}
