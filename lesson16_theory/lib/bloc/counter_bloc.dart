import 'package:bloc/bloc.dart';
import 'package:lesson16_theory/bloc/counter_events.dart';
import 'package:lesson16_theory/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc(): super(const CounterState(count: 0)){
    on<IncrementCounterEvent>(
        (event, emitter){
          final count = state.count;
          emitter(CounterState(count: count + 1));
        },
    );

    on<DecrementCounterEvent>(
          (event, emitter){
        final count = state.count;
        emitter(CounterState(count: count - 1));
      },
    );

    on<ResetCounterEvent>(
          (event, emitter){
        final count = state.count;
        emitter(CounterState(count: 0));
      },
    );
  }
}