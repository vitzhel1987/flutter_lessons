part of '../sign_in_page.dart';

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) {
        return previous.signInState.inProcess != current.signInState.inProcess || 
            previous.canSignIn != current.canSignIn;
      },
      builder: (context, state) {
        final inProcess = state.signInState.inProcess;

        return ElevatedButton(
          onPressed: state.canSignIn ? () => context.read<SignInCubit>().signIn() : null,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: switch (inProcess) {
            true => const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(strokeWidth: 2.5),
              ),
            false => Text(
                S.of(context).signIn,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          },
        );
      },
    );
  }
}
