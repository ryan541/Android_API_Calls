import 'package:flutter/material.dart';
import 'package:note_apis/views/note_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NoteList(),
    );
  }
}
