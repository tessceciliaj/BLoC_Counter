import 'package:bloc_concepts/logic/cubit/counter_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    // A function that will be called after each test is run
    tearDown(() {
      counterCubit.close();
    });

    test(
        ('The initial state for the CounterCubit is CounterState(counterValue:0)'),
        () {
      expect(counterCubit.state,
          CounterState(counterValue: 0, wasIncremented: true));
    });

    blocTest(
      'the cubit schould emit a CounterState(counterValue:1, wasIncremented: true)',
      build: () => counterCubit,
      act: (cubit) => cubit.increment(),
      expect: () => [CounterState(counterValue: 1, wasIncremented: true)],
    );

    blocTest(
      'the cubit schould emit a CounterState(counterValue:-1, wasIncremented: false)',
      build: () => counterCubit,
      act: (cubit) => cubit.decrement(),
      expect: () => [CounterState(counterValue: -1, wasIncremented: false)],
    );
  });
}
