void sendMessageToFirebase(String message) {
  DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference().child('messages');

  databaseReference.push().set(message);
}
