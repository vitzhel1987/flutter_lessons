part of '../update_todo_page.dart';

class _UpdateTitleField extends StatefulWidget {
  final String initialValue;

  const _UpdateTitleField({
    required this.initialValue,
  });

  @override
  State<_UpdateTitleField> createState() => _UpdateTitleFieldState();
}

class _UpdateTitleFieldState extends State<_UpdateTitleField> {
  late final TextEditingController _controller =
      TextEditingController(text: widget.initialValue);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UpdateTodoCubit, UpdateTodoState, (TodoElem, bool)>(
      selector: (state) {
        return (state.title, state.enableView);
      },
      builder: (context, titleAndEnable) {

        final title = titleAndEnable.$1;
        final enableView = titleAndEnable.$2;
        
        return TextField(
          controller: _controller,
          enabled: enableView,
          decoration: InputDecoration(
            labelText: S.of(context).taskTitle,
            border: const OutlineInputBorder(),
            errorText: AppTextFieldValidator.validateTodoElem(context, title),
          ),
          textCapitalization: TextCapitalization.sentences,
          onChanged: context.read<UpdateTodoCubit>().updateTitle,
        );
      },
    );
  }
}
