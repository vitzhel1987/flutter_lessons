part of 'state.dart';

@freezed
abstract class AddTodoState with _$AddTodoState {
  bool get canAddTodo {
    return title.isValid && note.isValid && !addTodoState.inProcess;
  }

  bool get enableView {
    return !addTodoState.inProcess;
  }

  const AddTodoState._();

  const factory AddTodoState({
    @Default(TodoElem.pure()) TodoElem title,
    @Default(TodoElem.pure()) TodoElem note,
    @Default(ProcessState.initial()) ProcessState addTodoState,
  }) = _AddTodoState;
}
