import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/points_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PointsCounter()
      ),
    );
  }
}
