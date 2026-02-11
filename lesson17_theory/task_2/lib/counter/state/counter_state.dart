import 'package:freezed_annotation/freezed_annotation.dart';

import 'history_item.dart';

part 'counter_state.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    required int count,
    required List<HistoryItem> history,
  }) = _CounterState;
}
