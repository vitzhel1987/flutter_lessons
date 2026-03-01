import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/app_state/auth_cubit.dart';
import 'package:todo_app/app/navigation/go_router_refresh_stream.dart';
import 'package:todo_app/domain/todo_repository.dart';
import 'package:todo_app/presentation/auth/controller/register_cubit.dart';
import 'package:todo_app/presentation/auth/controller/sign_in_cubit.dart';
import 'package:todo_app/presentation/auth/register_page.dart';
import 'package:todo_app/presentation/auth/sign_in_page.dart';
import 'package:todo_app/presentation/todo/add_todo_page.dart';
import 'package:todo_app/presentation/todo/controller/add_todo_cubit.dart';
import 'package:todo_app/presentation/todo/controller/todo_list_cubit.dart';
import 'package:todo_app/presentation/todo/controller/update_todo_cubit.dart';
import 'package:todo_app/presentation/todo/todo_list_page.dart';
import 'package:todo_app/presentation/todo/update_todo_page.dart';

import 'app_screens.dart';

GoRouter createRouter(AuthCubit authCubit) {
  return GoRouter(
    initialLocation: AppScreens.signIn.relativePath,
    refreshListenable: GoRouterRefreshStream(authCubit.authStateChanges),
    redirect: (context, state) {
      final fullPath = state.uri.path;
      final authState = authCubit.state;

      final isAuthenticated = authState.isAuthenticated;

      final isLoginPath = fullPath == AppScreens.signIn.routePath;
      final isRegisterPath = fullPath == AppScreens.signIn.register.routePath;
      final isAuthPath = isLoginPath || isRegisterPath;

      if (!isAuthPath && !isAuthenticated) {
        return AppScreens.signIn.routePath;
      }

      if (isAuthPath && isAuthenticated) {
        return AppScreens.todoList.routePath;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppScreens.signIn.relativePath,
        name: AppScreens.signIn.routeName,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SignInCubit(
              signInWithEmailAndPassword: (email, password) {
                return context.read<AuthCubit>().signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
              },
            ),
            child: SignInPage(route: AppScreens.signIn),
          );
        },
        routes: [
          GoRoute(
            path: AppScreens.signIn.register.relativePath,
            name: AppScreens.signIn.register.routeName,
            builder: (context, state) {
              return BlocProvider(
                create: (context) => RegisterCubit(
                  registerWithEmailAndPassword: (email, password) {
                    return context
                        .read<AuthCubit>()
                        .registerWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                  },
                ),
                child: const RegisterPage(),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: AppScreens.todoList.relativePath,
        name: AppScreens.todoList.routeName,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => TodoListCubit(
              todoRepository: context.read<TodoRepository>(),
              logoutHandler: () {
                return context.read<AuthCubit>().signOut();
              },
            ),
            child: TodoListPage(route: AppScreens.todoList),
          );
        },
        routes: [
          GoRoute(
            path: AppScreens.todoList.addTodo.relativePath,
            name: AppScreens.todoList.addTodo.routeName,
            builder: (context, state) {
              return BlocProvider(
                create: (context) => AddTodoCubit(
                  todoRepository: context.read<TodoRepository>(),
                ),
                child: const AddTodoPage(),
              );
            },
          ),
          GoRoute(
            path: AppScreens.todoList.updateTodo.relativePath,
            name: AppScreens.todoList.updateTodo.routeName,
            builder: (context, state) {
              final queryParameters = state.uri.queryParameters;
              final arguments = AppScreens.todoList.updateTodo
                  .withUpdateTodoArguments(queryParameters);

              return BlocProvider(
                create: (context) => UpdateTodoCubit(
                  todoRepository: context.read<TodoRepository>(),
                  todoId: arguments.todoId,
                )..loadData(),
                child: const UpdateTodoPage(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
