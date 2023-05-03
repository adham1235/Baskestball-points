import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piontscounter/cubit/cubit.dart';
import 'package:piontscounter/points_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:
    [
      BlocProvider(create: (context)=>CounterCubit())
    ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PointsCounter(),
        ),);
  }
}
