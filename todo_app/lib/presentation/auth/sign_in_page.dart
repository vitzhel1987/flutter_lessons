import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/route/sign_in_route.dart';
import 'package:todo_app/core/presentation/app_text_field_validator.dart';
import 'package:todo_app/core/presentation/process_state.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/auth/controller/sign_in_cubit.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

part 'widgets/sign_in_button.dart';
part 'widgets/sign_in_password_field.dart';
part 'widgets/sign_in_email_field.dart';

class SignInPage extends StatelessWidget {
  final SignInRoute route;

  const SignInPage({
    required this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignInCubit, SignInState>(
          listenWhen: (previous, current) =>
              previous.actionState != current.actionState,
          listener: (context, state) {
            final actionState = state.actionState?.consume();
            if (actionState == null) return;

            actionState.when(
              register: () {
                context.push(route.register.routePath);
              },
            );
          },
        ),
        BlocListener<SignInCubit, SignInState>(
          listenWhen: (previous, current) =>
              previous.signInState != current.signInState,
          listener: (context, state) {
            final signInState = state.signInState;

            signInState.whenOrNull(error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    error.toString(),
                  ),
                ),
              );
            });
          },
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                Text(
                  S.of(context).welcomeBack,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  S.of(context).signInToContinue,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey[600],
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                const _SignInEmailField(),
                const SizedBox(height: 20),
                const _SignInPasswordField(),
                const SizedBox(height: 32),
                const _SignInButton(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).noAccount,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        //context.push(route.register.routePath);
                        //Альтернатива context.push
                        context.read<SignInCubit>().updateActionState(
                              const SignInActionState.register(),
                            );
                      },
                      child: Text(S.of(context).signUp),
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
