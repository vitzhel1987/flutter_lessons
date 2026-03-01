import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/core/presentation/todo_elem.dart';
import 'package:todo_app/domain/todo_repository.dart';
import 'package:todo_app/presentation/todo/controller/state/state.dart';

class UpdateTodoCubit extends Cubit<UpdateTodoState> {
  final TodoRepository _todoRepository;

  UpdateTodoCubit({
    required TodoRepository todoRepository,
    required String todoId,
  })  : _todoRepository = todoRepository,
        super(UpdateTodoState(todoId: todoId));

  Future<void> loadData() async {
    try {
      if (state.isLoading) return;

      emit(state.copyWith(isLoading: true));

      final todo = await _todoRepository.fetchTodoById(state.todoId);

      emit(
        state.copyWith(
          isLoading: false,
          todo: todo,
          title: TodoElem.dirty(todo.title),
          note: TodoElem.dirty(todo.note),
          isDone: todo.isCompleted,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: e,
        ),
      );
    }
  }

  void updateTitle(String value) {
    emit(
      state.copyWith(
        title: TodoElem.dirty(value),
      ),
    );
  }

  void updateNote(String value) {
    emit(
      state.copyWith(
        note: TodoElem.dirty(value),
      ),
    );
  }

  void updateIsDone(bool value) {
    emit(
      state.copyWith(
        isDone: value,
      ),
    );
  }

  Future<void> updateTodo() async {
    try {
      final canUpdateTodo = state.canUpdateTodo;
      final todo = state.todo;

      if (!canUpdateTodo || todo == null) return;

      final title = state.title.value;
      final note = state.note.value;
      final isDone = state.isDone;

      updateUpdateTodoState(const ProcessState.inProcess());

      final newTodo = todo.copyWith(
        title: title,
        note: note,
        isCompleted: isDone,
      );

      await _todoRepository.updateTodo(newTodo);

      updateUpdateTodoState(const ProcessState.success());
    } catch (e) {
      updateUpdateTodoState(ProcessState.error(error: e));
    }
  }

  void updateUpdateTodoState(ProcessState newState) {
    emit(
      state.copyWith(
        updateTodoState: newState,
      ),
    );
  }
}
