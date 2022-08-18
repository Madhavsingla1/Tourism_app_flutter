import 'package:firebase_database/firebase_database.dart';

class FirebaseMethod {
  final _database = FirebaseDatabase.instance.ref();
  Future<String> getimage(String name) async {
    String res = "Some Error Occured";
    try {
      //* Data from Realtime Database with name from the main place
      DataSnapshot snapshot =
          await _database.child('Beaches/India/$name').get();
      if (snapshot.exists) {
        print(snapshot.value);
      } else {
        print('No data available.');
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
