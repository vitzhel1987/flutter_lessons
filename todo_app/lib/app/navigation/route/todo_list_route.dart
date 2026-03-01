import 'package:todo_app/app/navigation/route/add_todo_route.dart';
import 'package:todo_app/app/navigation/route/app_route.dart';
import 'package:todo_app/app/navigation/route/update_todo_route.dart';

class TodoListRoute extends AppRoute {
  static const _routeName = "todo-list";
  static const _routePath = "/todo-list";

  @override
  String get relativePath => _routePath;

  late final addTodo = AddTodoRoute.child(
    rootRouteName: routeName,
    rootRoutePath: routePath,
  );

  late final updateTodo = UpdateTodoRoute.child(
    rootRouteName: routeName,
    rootRoutePath: routePath,
  );

  TodoListRoute() : super(routeName: _routeName, routePath: _routePath);
}
