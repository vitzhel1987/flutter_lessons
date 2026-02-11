import 'package:mobx/mobx.dart';

part 'todos_store.g.dart';

class TodosStore = _TodosStore with _$TodosStore;

abstract class _TodosStore with Store {

  @observable
 ObservableList<String> todos = ObservableList<String>();

  @computed
  int get todoCount => todos.length;

  @action
  void addTodo(String todo) {
    todos.add(todo);
  }

  @action
  void removeTodoAt(int index) {
    todos.removeAt(index);
  }
}