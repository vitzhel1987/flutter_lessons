part of '../register_page.dart';

class _RegisterPasswordField extends StatelessWidget {
  const _RegisterPasswordField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.obscurePassword != current.obscurePassword ||
          previous.enableView != current.enableView,
      builder: (context, state) {
        final password = state.password;
        final obscurePassword = state.obscurePassword;
        final enableView = state.enableView;

        return IgnorePointer(
          ignoring: !enableView,
          child: TextField(
            obscureText: obscurePassword,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: S.of(context).password,
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: switch(obscurePassword) {
                  true => const Icon(Icons.visibility_off),
                  false => const Icon(Icons.visibility),
                },
                onPressed: () => context.read<RegisterCubit>().updateObscurePassword(!obscurePassword),
              ),
              errorText:
                  AppTextFieldValidator.validatePassword(context, password),
              border: const OutlineInputBorder(),
            ),
            onChanged: (value) =>
                context.read<RegisterCubit>().updatePassword(value),
          ),
        );
      },
    );
  }
}
