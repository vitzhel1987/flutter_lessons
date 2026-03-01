import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/arguments/arguments.dart';
import 'package:todo_app/app/navigation/route/app_route.dart';

class UpdateTodoRoute extends AppRoute {
  static const _routeName = "updateTodo";
  static const _routePath = "/updateTodo";

  @override
  String get relativePath => _routePath;

  const UpdateTodoRoute.child({
    required String rootRoutePath,
    required String rootRouteName,
  }) : super(
          routeName: rootRouteName + _routeName,
          routePath: rootRoutePath + _routePath,
        );

  void push(
    BuildContext context, {
    required String todoId,
  }) {
    final arguments = UpdateTodoArguments(todoId: todoId);

    context.pushNamed(
      routeName,
      queryParameters: arguments.toJson(),
    );
  }

  UpdateTodoArguments withUpdateTodoArguments(Map<String, String> queryParameters) {
    return UpdateTodoArguments.fromJson(queryParameters);
  }
}
