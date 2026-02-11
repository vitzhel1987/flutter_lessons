import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_item.freezed.dart';

@freezed
abstract class HistoryItem with _$HistoryItem {
  const factory HistoryItem.increment(int value) = _HistoryItemIncrement;

  const factory HistoryItem.decrement(int value) = _HistoryItemDecrement;
}
