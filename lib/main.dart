import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:note_apis/services/note_services.dart';
import 'package:note_apis/views/note_list.dart';

void setupLocator() {
  GetIt.instance.registerLazySingleton(() => NoteService());
}

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
