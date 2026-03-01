part of '../update_todo_page.dart';

class _UpdateNoteField extends StatefulWidget {
  final String initialValue;

  const _UpdateNoteField({
    required this.initialValue,
  });

  @override
  State<_UpdateNoteField> createState() => _UpdateNoteFieldState();
}

class _UpdateNoteFieldState extends State<_UpdateNoteField> {
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
        return (state.note, state.enableView);
      },
      builder: (context, noteAndEnable) {
        final note = noteAndEnable.$1;
        final enableView = noteAndEnable.$2;
        
        return TextField(
          controller: _controller,
          enabled: enableView,
          decoration: InputDecoration(
            labelText: S.of(context).notesLabel,
            border: const OutlineInputBorder(),
            alignLabelWithHint: true,
            errorText: AppTextFieldValidator.validateTodoElem(context, note),
          ),
          maxLines: 5,
          minLines: 3,
          textCapitalization: TextCapitalization.sentences,
          onChanged: (v) => context.read<UpdateTodoCubit>().updateNote(v),
        );
      },
    );
  }
}
