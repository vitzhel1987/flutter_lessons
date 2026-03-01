import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/domain/entity/entities.dart';
import 'package:todo_app/domain/todo_repository.dart';
import 'package:todo_app/presentation/todo/controller/state/state.dart';

typedef LogoutHandler = Future<void> Function();

class TodoListCubit extends Cubit<TodoListState> {
  final TodoRepository _todoRepository;
  final LogoutHandler _logoutHandler;

  late final StreamSubscription<List<TodoEntity>> _todoListStreamSubscription;

  TodoListCubit({
    required TodoRepository todoRepository,
    required LogoutHandler logoutHandler,
  })  : _todoRepository = todoRepository,
        _logoutHandler = logoutHandler,
        super(const TodoListState()) {
    _todoListStreamSubscription = _todoRepository.watchTodos().listen(
          _onTodosData,
          onError: _onTodosError,
        );
  }

  void _onTodosData(List<TodoEntity> event) {
    emit(
      state.copyWith(
        isLoading: false,
        todos: event,
        error: null,
      ),
    );
  }

  void _onTodosError(Object error) {
    emit(
      state.copyWith(
        isLoading: false,
        todos: [],
        error: error,
      ),
    );
  }

  Future<void> logout() {
    return _logoutHandler();
  }

  Future<void> removeTodo(String? todoId) async {
    final inProcess = state.removeTodoProcessState.inProcess;
    if (inProcess || todoId == null) return;

    try {
      _updateRemoveTodoProcessState(const ProcessState.inProcess());

      await _todoRepository.deleteTodo(todoId);

      _updateRemoveTodoProcessState(const ProcessState.success());
    } catch (e) {
      _updateRemoveTodoProcessState(ProcessState.error(error: e));
    }
  }

  void _updateRemoveTodoProcessState(ProcessState processState) {
    emit(
      state.copyWith(
        removeTodoProcessState: processState,
      ),
    );
  }

  @override
  Future<void> close() {
    _todoListStreamSubscription.cancel();

    return super.close();
  }
}
