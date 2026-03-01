import 'app_route.dart';

class RegisterRoute extends AppRoute {
  static const _routeName = "register";
  static const _routePath = "/register";

  @override
  String get relativePath => _routePath;

  const RegisterRoute._() : super(routePath: _routePath, routeName: _routeName);

  const RegisterRoute.child({
    required String rootRoutePath,
    required String rootRouteName,
  }) : super(
          routeName: rootRouteName + _routeName,
          routePath: rootRoutePath + _routePath,
        );
}
