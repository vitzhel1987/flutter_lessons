import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson16_theory/bloc/counter_bloc.dart';
import 'package:lesson16_theory/bloc/counter_events.dart';
import 'package:lesson16_theory/bloc/counter_state.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterBloc, CounterState>(
      listenWhen: (prev, curr) => prev.count != curr.count,
      listener: (context, state) {
        final count = state.count;

        if(count == 0){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Данные обнулились')));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('CounterBlocPage'), centerTitle: true),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocSelector<CounterBloc, CounterState, int>(
                  selector: (state) {
                    return state.count;
                  },
                  builder: (context, count) {
                    return Text(count.toString());
                  },
                ),
                // BlocBuilder<CounterBloc, CounterState>(
                //   buildWhen: (prev, curr) => prev.count != curr.count,
                //   builder: (context, state) {
                //     return Text(state.count.toString());
                //   },
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(
                            IncrementCounterEvent(),
                          );
                        },
                        child: const Text("Прибавить"),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(
                            DecrementCounterEvent(),
                          );
                        },
                        child: const Text("Отнять"),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(ResetCounterEvent());
                        },
                        child: const Text("Сбросить"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
