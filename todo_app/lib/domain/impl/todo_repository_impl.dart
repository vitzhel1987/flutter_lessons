import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/data/mappers/todo_mapper.dart';
import 'package:todo_app/data/todo_data_source.dart';
import 'package:todo_app/domain/entity/entities.dart';
import 'package:todo_app/domain/todo_repository.dart';

final class TodoRepositoryImpl implements TodoRepository {
  final FirebaseAuth _firebaseAuth;

  final TodoDataSource _todoDataSource;
  final TodoMapper _todoMapper;

  const TodoRepositoryImpl({
    required TodoDataSource todoDataSource,
    required FirebaseAuth firebaseAuth,
    required TodoMapper todoMapper,
  })  : _todoDataSource = todoDataSource,
        _firebaseAuth = firebaseAuth,
        _todoMapper = todoMapper;

  @override
  Future<void> addTodo({
    required String header,
    required String note,
  }) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must bee authorized');
    }

    return _todoDataSource.addTodo(
      userId: userId,
      header: header,
      note: note,
    );
  }

  @override
  Future<TodoEntity> fetchTodoById(String todoId) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must bee authorized');
    }

    final todoModel = await _todoDataSource.fetchTodoById(userId, todoId);

    return _todoMapper.toTodoEntity(todoModel);
  }

  @override
  Stream<List<TodoEntity>> watchTodos() {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must bee authorized');
    }

    return _todoDataSource.watchTodos(userId).map((e) {
      return e.map(_todoMapper.toTodoEntity).toList();
    });
  }

  @override
  Future<void> updateTodo(TodoEntity todo) {
    final userId = _firebaseAuth.currentUser?.uid;
    final todoModel = _todoMapper.toTodoModel(todo);

    if (userId == null) {
      throw Exception('User must bee authorized');
    }

    return _todoDataSource.updateTodo(userId, todoModel);
  }
  
  @override
  Future<void> deleteTodo(String todoId) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must bee authorized');
    }

    return _todoDataSource.deleteTodo(userId, todoId);
  }
}
