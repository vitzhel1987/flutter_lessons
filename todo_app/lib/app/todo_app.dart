import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app/app_state/auth_cubit.dart';
import 'package:todo_app/app/navigation/app_router.dart';
import 'package:todo_app/data/impl/todo_data_source_impl.dart';
import 'package:todo_app/data/mappers/auth_mapper.dart';
import 'package:todo_app/data/todo_data_source.dart';
import 'package:todo_app/domain/impl/auth_repository_impl.dart';
import 'package:todo_app/data/mappers/todo_mapper.dart';
import 'package:todo_app/domain/auth_repository.dart';
import 'package:todo_app/domain/impl/todo_repository_impl.dart';
import 'package:todo_app/domain/todo_repository.dart';
import 'package:todo_app/generated/l10n.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Provider<FirebaseAuth>(
          create: (context) {
            return FirebaseAuth.instance;
          },
        ),
        Provider<FirebaseFirestore>(
          create: (context) {
            return FirebaseFirestore.instance;
          },
        ),
        Provider<TodoMapper>(
          create: (context) {
            return TodoMapperImpl();
          },
        ),
        Provider<AuthMapper>(
          create: (context) {
            return AuthMapperImpl();
          },
        ),
        Provider<TodoDataSource>(
          create: (context) {
            return TodoDataSourceImpl(
              firebaseFirestore: context.read<FirebaseFirestore>(),
            );
          },
        ),
        RepositoryProvider<AuthRepository>(
          create: (context) {
            return AuthRepositoryImpl(
              authMapper: context.read<AuthMapper>(),
              firebaseAuth: context.read<FirebaseAuth>(),
            );
          },
        ),
         RepositoryProvider<TodoRepository>(
          create: (context) {
            return TodoRepositoryImpl(
              todoDataSource: context.read<TodoDataSource>(),
              todoMapper: context.read<TodoMapper>(), 
              firebaseAuth: context.read<FirebaseAuth>(),
            );
          },
        ),
        BlocProvider<AuthCubit>(
          create: (context) {
            return AuthCubit(
              authRepository: context.read<AuthRepository>(),
            );
          },
        ),
        Provider<GoRouter>(
          create: (context) {
            return createRouter(
              context.read<AuthCubit>(),
            );
          },
        )
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            routerConfig: context.read<GoRouter>(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
