import 'package:note_apis/models/note_for_listing.dart';

class NoteService {
  List<NoteForListing> getNotesList() {
    return [
      NoteForListing(
          noteID: '1',
          noteTitle: 'Note 1',
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now()),
      NoteForListing(
          noteID: '2',
          noteTitle: 'Note 2',
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now()),
    ];
  }
}
