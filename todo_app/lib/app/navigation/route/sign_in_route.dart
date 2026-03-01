import 'package:todo_app/app/navigation/route/app_route.dart';
import 'package:todo_app/app/navigation/route/register_route.dart';

class SignInRoute extends AppRoute {
  static const _routeName = "signIn";
  static const _routePath = "/signIn";

  @override
  String get relativePath => routePath;

  late final register = RegisterRoute.child(
    rootRouteName: routeName,
    rootRoutePath: relativePath,
  );

  SignInRoute(): super(routeName: _routeName, routePath: _routePath);
}
