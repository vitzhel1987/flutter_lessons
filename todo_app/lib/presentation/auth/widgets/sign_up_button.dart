part of '../register_page.dart';

class _SignUpButton extends StatelessWidget {
  const _SignUpButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.inProccess != current.inProccess ||
            previous.canRegister != current.canRegister;
      },
      builder: (context, state) {
        final inProccess = state.inProccess;
        final canRegister = state.canRegister;

        return ElevatedButton(
          onPressed: canRegister ? () => context.read<RegisterCubit>().register() : null,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: switch (inProccess) {
            true => const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(strokeWidth: 2.5),
              ),
            false => Text(
                S.of(context).signUp,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          },
        );
      },
    );
  }
}
