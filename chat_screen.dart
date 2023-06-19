import 'package:firebase_database/firebase_database.dart';

List<String> messages = [];

void readMessagesFromFirebase() {
  DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference().child('messages');

  databaseReference.onChildAdded.listen((event) {
    String message = event.snapshot.value;
    messages.add(message);
  });
}
