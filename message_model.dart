void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  readMessagesFromFirebase();
  runApp(MyApp());
}
