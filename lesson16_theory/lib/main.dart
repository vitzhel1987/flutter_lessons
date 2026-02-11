import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson16_theory/bloc/counter_bloc.dart';
import 'package:lesson16_theory/bloc/counter_bloc_page.dart';
import 'package:lesson16_theory/change_notifier_provider/counter_change_notifier_page.dart';
import 'package:lesson16_theory/change_notifier_provider/counter_model.dart';
import 'package:lesson16_theory/cubit/counter_cubit.dart';
import 'package:provider/provider.dart';

import 'cubit/counter_cubit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc, Cubit',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),

      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const CounterBlocPage(),
      ),
      // home: MultiBlocProvider(
      //   providers: [
      //     //BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
      //     BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
      //   ],
      //   child: const CounterCubitPage(),
      // ),
    );
    // return ChangeNotifierProvider(
    //   create: (context) => CounterModel(),
    //   child: MaterialApp(
    //     title: 'ChangeNotifier',
    //     theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
    //     home: const CounterChangeNotifierPage(),
    //   ),
    // );
  }
}
