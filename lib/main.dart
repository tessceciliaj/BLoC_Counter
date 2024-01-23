import 'package:bloc_concepts/logic/cubit/counter_cubit.dart';
import 'package:bloc_concepts/presentation/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter BLoC Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
          child: const HomeScreen(
            title: 'Flutter BLoC demo.',
            colors: Color.fromARGB(255, 174, 131, 255),
          ),
        ),
      ),
    );
  }
}
