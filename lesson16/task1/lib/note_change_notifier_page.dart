import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'note_model.dart';

class NoteChangeNotifierPage extends StatefulWidget {
  const NoteChangeNotifierPage({super.key});

  @override
  State<NoteChangeNotifierPage> createState() => _NoteChangeNotifierPageState();
}

class _NoteChangeNotifierPageState extends State<NoteChangeNotifierPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleTextController = TextEditingController();
  final _categoryTextController = TextEditingController();

  void _addNote() {
    final validateState = _formKey.currentState?.validate() ?? false;

    if (validateState) {
      final title = _titleTextController.value.text.trim();
      final category = _categoryTextController.value.text.trim();

      Provider.of<NoteModel>(context, listen: false).addNote(title, category);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Заметка добавлена')),
      );
    }
  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _categoryTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChangeNotifierProvider'), centerTitle: true),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  controller: _titleTextController,
                  decoration: InputDecoration(
                    label: Text('Заголовок заметки'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _categoryTextController,
                  decoration: InputDecoration(
                    label: Text('Категория заметки'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final width = constraints.maxWidth;
                    return SizedBox(
                      width: width,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: _addNote,
                        child: Text(
                          'Добавить заметку',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
                Consumer<NoteModel>(
                  builder: (context, noteModel, child) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Количество заметок: ${noteModel.notesCount}',
                        style: TextStyle(fontSize: 16),
                      ),
                    );
                  },
                ),
                Expanded(
                  child: Consumer<NoteModel>(
                    builder: (context, noteModel, child) {
                      return ListView.separated(
                        itemCount: noteModel.notesCount,
                        separatorBuilder: (context, index) =>
                            Divider(color: Colors.grey[300], height: 1),
                        itemBuilder: (context, index) {
                          final note = noteModel.notes[index];
                          return ListTile(
                            leading: SizedBox(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            title: Text(note.title),
                            subtitle: Text(note.category),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                context.read<NoteModel>().removeNote(index);
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
