import 'package:todo_app/data/model/models.dart';
import 'package:todo_app/data/todo_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final class TodoDataSourceImpl implements TodoDataSource {
  final FirebaseFirestore _firebaseFirestore;

  const TodoDataSourceImpl({
    required FirebaseFirestore firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore;

  @override
  Future<void> addTodo({
    required String userId,
    required String header,
    required String note,
  }) async {
    final todoModel = TodoModel(
      id: null,
      title: header,
      note: note,
      isCompleted: false,
    );

    final colRef = _firebaseFirestore.collection("users/todos/$userId");
    final docRef = await colRef.add(todoModel.toJson());

    final docSnapshot = await docRef.get();
    final data = docSnapshot.data() ?? {};

    final newTodo = TodoModel.fromJson(data).copyWith(id: docSnapshot.id);

    await docRef.set(newTodo.toJson());
  }

  @override
  Future<void> deleteTodo(String userId, String todoId) async {
    final docPath = _firebaseFirestore.doc("users/todos/$userId/$todoId");

    await docPath.delete();
  }

  @override
  Future<TodoModel> fetchTodoById(String userId, String todoId) async {
    final docPath = _firebaseFirestore.doc("users/todos/$userId/$todoId");
    final docRef = await docPath.get();

    final data = docRef.data() ?? {};
    final todo = TodoModel.fromJson(data);

    return todo;
  }

  @override
  Future<void> updateTodo(String userId, TodoModel todo) async {
    final docPath = _firebaseFirestore.doc("users/todos/$userId/${todo.id}");

    await docPath.set(todo.toJson());
  }

  @override
  Stream<List<TodoModel>> watchTodos(String userId) {
    return _queryTodos(userId).snapshots().map(
      (e) {
        final docs = e.docs;
        final items = docs.map((e) => e.data()).nonNulls.toList();

        return items;
      },
    );
  }

  Query<TodoModel?> _queryTodos(String userId) {
    return _firebaseFirestore.collection("users/todos/$userId").withConverter(
      fromFirestore: (e, _) {
        final data = e.data();

        if (data == null) {
          return null;
        }

        return TodoModel.fromJson(data);
      },
      toFirestore: (e, _) {
        return e?.toJson() ?? {};
      },
    );
  }
}
