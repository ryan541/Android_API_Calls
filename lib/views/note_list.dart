import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_apis/models/note_for_listing.dart';
import 'package:note_apis/views/note_create.dart';
import 'package:note_apis/views/note_modify.dart';

import 'note_delete.dart';

class NoteList extends StatelessWidget {
  NoteList({super.key});

  final notes = [
    NoteForListing(
        noteID: '1',
        noteTitle: 'Note 1',
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note List Display'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const NoteCreate()));
          },
          child: const Icon(Icons.add)),
      body: ListView.separated(
        separatorBuilder: (_, __) =>
            const Divider(height: 1, color: Colors.green),
        itemBuilder: (_, index) {
          return Dismissible(
            key: ValueKey(notes[index].noteID),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = await showDialog(
                context: context,
                builder: (_) => const NoteDelete(),
              );
              print(result);
            },
            child: ListTile(
              title: const Text(
                'Hello',
                style: TextStyle(color: Colors.blue),
              ),
              subtitle: const Text('Last Edit on 21/2/2023'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const NoteModify()));
              },
            ),
          );
        },
        itemCount: 30,
      ),
    );
  }
}
