import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'my_app.dart';
import 'note_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NoteModel(),
      child: const MyApp(),
    ),
  );
}
