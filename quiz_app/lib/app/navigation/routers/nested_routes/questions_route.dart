import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/arguments/arguments.dart';
import 'package:quiz_app/app/navigation/routers/abstract/nested_app_route.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/result_quiz_route.dart';

class QuestionRoute extends NestedAppRoute {
  static const String _routeName = "quiz_game";
  static const String _routePath = "/quiz_game";

  late final resultQuizRoute = ResultQuizRoute(
    parentAbsolutePath: routeAbsolutePath,
  );

  QuestionRoute({required String parentAbsolutePath})
    : super(
        routeAbsolutePath: parentAbsolutePath + _routePath,
        routeName: _routeName,
        routePath: _routePath,
      );

  void push(GoRouter router, {required String category}){
    final arguments = QuestionsArguments(category: category);
    final queryParameters = arguments.toJson();

    router.pushNamed(name, queryParameters: queryParameters);
  }

  QuestionsArguments withQuestionsArguments(Map<String, dynamic> json){
    return QuestionsArguments.fromJson(json);
  }
}
