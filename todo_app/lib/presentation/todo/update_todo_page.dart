import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/presentation/app_text_field_validator.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/core/presentation/todo_elem.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/todo/controller/state/state.dart';
import 'package:todo_app/presentation/todo/controller/update_todo_cubit.dart';

part 'widgets/update_note_field.dart';
part 'widgets/update_title_field.dart';

class UpdateTodoPage extends StatelessWidget {
  const UpdateTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).editTask),
      ),
      body: BlocConsumer<UpdateTodoCubit, UpdateTodoState>(
        listenWhen: (prev, curr) =>
            prev.updateTodoState != curr.updateTodoState,
        listener: (context, state) {
          final process = state.updateTodoState;

          process.whenOrNull(
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).taskUpdated)),
              );
              context.pop();
            },
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(S.of(context).error(error)),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        buildWhen: (prev, curr) {
          return prev.isLoading != curr.isLoading || prev.error != curr.error;
        },
        builder: (context, state) {
          final isLoading = state.isLoading;
          final error = state.error;

          if (isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (error != null) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(S.of(context).failedToLoadTask(error)),
                  const SizedBox(height: 24),
                  OutlinedButton(
                    onPressed: () => context.read<UpdateTodoCubit>().loadData(),
                    child: Text(S.of(context).tryAgain),
                  ),
                ],
              ),
            );
          }

          return Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _UpdateTitleField(initialValue: state.title.value),
                    const SizedBox(height: 24),
                    _UpdateNoteField(initialValue: state.note.value),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        BlocSelector<UpdateTodoCubit, UpdateTodoState, bool>(
                          selector: (state) {
                            return state.isDone;
                          },
                          builder: (context, state) {
                            return Checkbox(
                              value: state,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  context
                                      .read<UpdateTodoCubit>()
                                      .updateIsDone(value);
                                }
                              },
                            );
                          },
                        ),
                        Text(
                          S.of(context).taskCompleted,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),

              // Кнопка сохранить внизу
              Positioned(
                left: 16,
                right: 16,
                bottom: 24,
                child: BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
                  buildWhen: (prev, curr) =>
                      prev.updateTodoState != curr.updateTodoState ||
                      prev.canUpdateTodo != curr.canUpdateTodo,
                  builder: (context, state) {
                    final isInProcess = state.updateTodoState.inProcess;
                    final canSave = state.canUpdateTodo && !isInProcess;

                    return FilledButton.icon(
                      icon: isInProcess
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: Colors.white,
                              ),
                            )
                          : const Icon(Icons.save_rounded),
                      label: Text(isInProcess
                          ? S.of(context).saving
                          : S.of(context).save),
                      style: FilledButton.styleFrom(
                        minimumSize: const Size.fromHeight(52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: canSave
                          ? () => context.read<UpdateTodoCubit>().updateTodo()
                          : null,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
