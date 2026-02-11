import 'package:flutter/material.dart';

class Note {
  final String title;
  final String category;

  const Note(this.title, this.category);
}

class NoteModel extends ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  int get notesCount => _notes.length;

  void addNote(String title, String category) {
    final note = Note(title, category);
    _notes.add(note);
    notifyListeners();
  }

  void removeNote(int index) {
    if (index >= 0 && index < _notes.length) {
      _notes.removeAt(index);
      notifyListeners();
    }
  }
}
