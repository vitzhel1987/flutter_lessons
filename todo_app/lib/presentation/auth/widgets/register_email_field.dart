part of '../register_page.dart';

class _RegisterEmailField extends StatelessWidget {
  const _RegisterEmailField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.email != current.email ||
          previous.enableView != current.enableView,
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
              errorText: AppTextFieldValidator.validateEmail(context, email),
              border: const OutlineInputBorder(),
            ),
            onChanged: (value) =>
                context.read<RegisterCubit>().updateEmail(value),
          ),
        );
      },
    );
  }
}
