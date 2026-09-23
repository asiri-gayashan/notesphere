import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesphere/models/note_model.dart';
import 'package:notesphere/models/todo_model.dart';
import 'package:notesphere/utils/router.dart';
import 'package:notesphere/utils/theme_data.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(NoteAdapter());
  Hive.registerAdapter(TodoAdapter());

  await Hive.openBox('notes');
  await Hive.openBox('todos');

  runApp(const MyApp());
}
