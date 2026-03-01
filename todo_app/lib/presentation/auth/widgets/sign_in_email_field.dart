part of '../sign_in_page.dart';

class _SignInEmailField extends StatelessWidget {
  const _SignInEmailField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) {
        return previous.email != current.email ||
            previous.enableView != current.enableView;
      },
      builder: (context, state) {
        final email = state.email;
        final enableView = state.enableView;

        return IgnorePointer(
          ignoring: !enableView,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: S.of(context).email,
              hintText: 'example@mail.com',
              prefixIcon: const Icon(Icons.email_outlined),
              border: const OutlineInputBorder(),
              errorText: AppTextFieldValidator.validateEmail(context, email),
            ),
            onChanged: (value) => context.read<SignInCubit>().updateEmail(value),
          ),
        );
      },
    );
  }
}
