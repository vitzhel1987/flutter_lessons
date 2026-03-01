import 'package:todo_app/data/model/models.dart';

abstract interface class TodoDataSource {
  Future<void> addTodo({
    required String userId,
    required String header,
    required String note,
  });

  Stream<List<TodoModel>> watchTodos(String userId);

  Future<void> deleteTodo(String userId, String todoId);

  Future<void> updateTodo(String userId, TodoModel todo);

  Future<TodoModel> fetchTodoById(String userId, String todoId);
}
