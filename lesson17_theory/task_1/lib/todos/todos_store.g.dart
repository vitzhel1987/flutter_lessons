// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodosStore on _TodosStore, Store {
  late final _$todosAtom = Atom(name: '_TodosStore.todos', context: context);

  @override
  ObservableList<String> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<String> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  late final _$_TodosStoreActionController = ActionController(
    name: '_TodosStore',
    context: context,
  );

  @override
  void addTodo(String todo) {
    final _$actionInfo = _$_TodosStoreActionController.startAction(
      name: '_TodosStore.addTodo',
    );
    try {
      return super.addTodo(todo);
    } finally {
      _$_TodosStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodoAt(int index) {
    final _$actionInfo = _$_TodosStoreActionController.startAction(
      name: '_TodosStore.removeTodoAt',
    );
    try {
      return super.removeTodoAt(index);
    } finally {
      _$_TodosStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos}
    ''';
  }
}
