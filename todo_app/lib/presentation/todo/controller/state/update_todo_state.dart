part of "state.dart";

@freezed
abstract class UpdateTodoState with _$UpdateTodoState {
  bool get canUpdateTodo {
    return title.isValid &&
        note.isValid &&
        !isLoading &&
        !updateTodoState.inProcess &&
        todo != null;
  }

  bool get enableView {
    return !updateTodoState.inProcess;
  }

  const UpdateTodoState._();

  const factory UpdateTodoState({
    required String todoId,
    @Default(false) bool isLoading,
    @Default(null) TodoEntity? todo,
    @Default(TodoElem.pure()) TodoElem title,
    @Default(TodoElem.pure()) TodoElem note,
    @Default(false) bool isDone,
    @Default(ProcessState.initial()) ProcessState updateTodoState,
    @Default(null) Object? error,
  }) = _UpdateTodoState;
}
