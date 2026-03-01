import 'package:todo_app/app/navigation/route/app_route.dart';

class AddTodoRoute extends AppRoute {
  static const _routeName = "addTodo";
  static const _routePath = "/addTodo";

  @override
  String get relativePath => _routePath;

  const AddTodoRoute._() : super(routePath: _routePath, routeName: _routeName);

  const AddTodoRoute.child({
    required String rootRoutePath,
    required String rootRouteName,
  }) : super(
          routeName: rootRouteName + _routeName,
          routePath: rootRoutePath + _routePath,
        );
}
