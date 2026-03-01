import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/presentation/app_text_field_validator.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/auth/controller/register_cubit.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

part 'widgets/sign_up_button.dart';
part 'widgets/register_password_field.dart';
part 'widgets/register_email_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).signUp),
        centerTitle: true,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<RegisterCubit, RegisterState>(
            listenWhen: (previous, current) =>
                previous.actionState != current.actionState,
            listener: (context, state) {
              final actionState = state.actionState?.consume();
              if (actionState == null) return;

              actionState.when(
                back: () {
                  context.pop();
                },
              );
            },
          ),
          BlocListener<RegisterCubit, RegisterState>(
            listenWhen: (previous, current) =>
                previous.registerState != current.registerState,
            listener: (context, state) {
              final registerState = state.registerState;

              registerState.whenOrNull(
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
          ),
        ],
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                Text(
                  S.of(context).createAccount,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  S.of(context).signUpToGetStarted,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey[600],
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                const _RegisterEmailField(),
                const SizedBox(height: 20),
                const _RegisterPasswordField(),
                const SizedBox(height: 32),
                const _SignUpButton(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).alreadyHaveAccount,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<RegisterCubit>().updateActionState(
                              const RegisterActionState.back(),
                            );
                      },
                      child: Text(S.of(context).signIn),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
