import 'package:bloc/bloc.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/core/presentation/todo_elem.dart';
import 'package:todo_app/domain/todo_repository.dart';
import 'package:todo_app/presentation/todo/controller/state/state.dart';

class AddTodoCubit extends Cubit<AddTodoState> {
  final TodoRepository _todoRepository;

  AddTodoCubit({
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(const AddTodoState());

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

  Future<void> addTodo() async {
    try {
      final canAddTodo = state.canAddTodo;
      if (!canAddTodo) return;

      final title = state.title.value;
      final note = state.note.value;

      updateAddTodoState(const ProcessState.inProcess());

      await _todoRepository.addTodo(
        header: title,
        note: note,
      );

      updateAddTodoState(const ProcessState.success());
    } catch (e) {
      updateAddTodoState(ProcessState.error(error: e));
    }
  }

  void updateAddTodoState(ProcessState newState) {
    emit(
      state.copyWith(
        addTodoState: newState,
      ),
    );
  }
}
