part of '../sign_in_page.dart';

class _SignInPasswordField extends StatelessWidget {
  const _SignInPasswordField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) {
        return previous.password != current.password ||
            previous.obscurePassword != current.obscurePassword ||
            previous.enableView != current.enableView;
      },
      builder: (context, state) {
        final obscureText = state.obscurePassword;

        return IgnorePointer(
          ignoring: !state.enableView,
          child: TextField(
            obscureText: obscureText,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: S.of(context).password,
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: Icon(switch (obscureText) {
                  true => Icons.visibility_off,
                  false => Icons.visibility,
                }),
                onPressed: () => context
                    .read<SignInCubit>()
                    .updateObscurePassword(!obscureText),
              ),
              border: const OutlineInputBorder(),
              errorText: AppTextFieldValidator.validatePassword(
                  context, state.password),
            ),
            onChanged: (value) =>
                context.read<SignInCubit>().updatePassword(value),
          ),
        );
      },
    );
  }
}
