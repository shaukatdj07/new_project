import 'package:bloc_app/bloc/counter/counter_bloc.dart';
import 'package:bloc_app/bloc/switch/switch_bloc.dart';
import 'package:bloc_app/ui/counter_screen.dart';
import 'package:bloc_app/ui/slider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => CounterBloc(),
      child: BlocProvider(
        create: (context) => SwitchBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
          home: const SliderScreen(),
        ),
      ),
    );
  }
}

