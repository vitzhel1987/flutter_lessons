import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_state.freezed.dart';

@freezed
class ProcessState with _$ProcessState {
  bool get inProcess {
    return this is _ProcessInProcessState;
  }

  bool get isSuccess {
    return this is _ProcessSuccessState;
  }

  const ProcessState._();

  const factory ProcessState.initial() = _ProcessInitlaState;
  const factory ProcessState.inProcess() = _ProcessInProcessState;
  const factory ProcessState.success() = _ProcessSuccessState;
  const factory ProcessState.error({required Object error}) =
      _ProcessErrorState;
}
