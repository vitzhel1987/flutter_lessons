import 'package:todo_app/domain/entity/entities.dart';

abstract interface class TodoRepository {
  Future<void> addTodo({
    required String header,
    required String note,
  });

  Stream<List<TodoEntity>> watchTodos();

  Future<TodoEntity> fetchTodoById(String todoId);

  Future<void> updateTodo(TodoEntity todo);

  Future<void> deleteTodo(String todoId);
}
