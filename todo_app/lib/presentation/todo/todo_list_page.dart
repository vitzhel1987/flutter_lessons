import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/route/todo_list_route.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/todo/controller/state/state.dart';
import 'package:todo_app/presentation/todo/controller/todo_list_cubit.dart';
import 'package:todo_app/presentation/todo/widgets/todo_list_tile.dart';

part 'widgets/todo_list_error_widget.dart';
part 'widgets/todo_list_empty_widget.dart';

class TodoListPage extends StatelessWidget {
  final TodoListRoute route;

  const TodoListPage({
    required this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<TodoListCubit, TodoListState>(
      listenWhen: (prev, curr) =>
          prev.removeTodoProcessState != curr.removeTodoProcessState,
      listener: (context, state) {
        final removeTodoProcessState = state.removeTodoProcessState;

        removeTodoProcessState.whenOrNull(
          success: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(S.of(context).taskRemoved)),
            );
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).error(error)),
                backgroundColor: Colors.red,
              ),
            );
          }
        );
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: Text(
            S.of(context).my_todos,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          actions: [
            IconButton(
              onPressed: () => context.read<TodoListCubit>().logout(),
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: SafeArea(
          child: BlocBuilder<TodoListCubit, TodoListState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state.error != null) {
                return _TodoListErrorWidget(error: state.error);
              }

              if (state.todos.isEmpty) {
                return const _TodoListEmptyWidget();
              }

              return ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                itemCount: state.todos.length,
                itemBuilder: (context, index) {
                  final todo = state.todos[index];
                  final todoId = todo.id;

                  return TodoListTile(
                    todo: todo,
                    onToggle: () {
                      if (todoId == null) return;

                      route.updateTodo.push(
                        context,
                        todoId: todoId,
                      );
                    },
                    onDelete: () {
                      context.read<TodoListCubit>().removeTodo(todoId);
                    },
                  );
                },
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.push(route.addTodo.routePath);
          },
          icon: const Icon(Icons.add),
          label: Text(S.of(context).add),
        ),
      ),
    );
  }
}
