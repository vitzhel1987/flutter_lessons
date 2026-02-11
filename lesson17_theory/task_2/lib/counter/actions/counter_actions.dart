import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_actions.freezed.dart';

@freezed
sealed class CounterActions with _$CounterActions {
  const factory CounterActions.increment() = _Increment;

  const factory CounterActions.decrement() = _Decrement;
}
