import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/presentation/app_text_field_validator.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/todo/controller/add_todo_cubit.dart';
import 'package:todo_app/presentation/todo/controller/state/state.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = S.of(context);

    return BlocListener<AddTodoCubit, AddTodoState>(
      listenWhen: (prev, curr) => prev.addTodoState != curr.addTodoState,
      listener: (context, state) {
        final addTodoState = state.addTodoState;

        addTodoState.whenOrNull(
          success: () {
            context.pop();
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  error.toString(),
                ),
              ),
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(l.add),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<AddTodoCubit, AddTodoState>(
                        buildWhen: (prev, curr) {
                          return prev.title != curr.title ||
                              prev.enableView != curr.enableView;
                        },
                        builder: (context, state) {
                          final title = state.title;
                          final enableView = state.enableView;

                          return TextField(
                            enabled: enableView,
                            autofocus: true,
                            textCapitalization: TextCapitalization.sentences,
                            maxLength: 100,
                            decoration: InputDecoration(
                              labelText: l.whatToDo,
                              hintText: l.whatToDoHint,
                              errorText: AppTextFieldValidator.validateTodoElem(
                                  context, title),
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.grey.shade50,
                            ),
                            onChanged: (value) {
                              context.read<AddTodoCubit>().updateTitle(value);
                            },
                          );
                        },
                      ),

                      const SizedBox(height: 28),

                      BlocBuilder<AddTodoCubit, AddTodoState>(
                        buildWhen: (prev, curr) {
                          return prev.note != curr.note ||
                              prev.enableView != curr.enableView;
                        },
                        builder: (context, state) {
                          final note = state.note;
                          final enableView = state.enableView;

                          return TextField(
                            enabled: enableView,
                            textCapitalization: TextCapitalization.sentences,
                            maxLength: 500,
                            maxLines: 6,
                            minLines: 4,
                            decoration: InputDecoration(
                              labelText: l.notes,
                              hintText: l.notesHint,
                              errorText: AppTextFieldValidator.validateTodoElem(
                                  context, note),
                              border: const OutlineInputBorder(),
                              alignLabelWithHint: true,
                              filled: true,
                              fillColor: Colors.grey.shade50,
                            ),
                            onChanged: (value) {
                              context.read<AddTodoCubit>().updateNote(value);
                            },
                          );
                        },
                      ),

                      const SizedBox(height: 32),

                      Text(
                        S.of(context).taskCreationHint,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 60), // дополнительный отступ снизу
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                child: BlocBuilder<AddTodoCubit, AddTodoState>(
                  builder: (context, state) {
                    final canAddTodo = state.canAddTodo;

                    return SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: FilledButton(
                        onPressed: canAddTodo
                            ? context.read<AddTodoCubit>().addTodo
                            : null,
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          l.save,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
