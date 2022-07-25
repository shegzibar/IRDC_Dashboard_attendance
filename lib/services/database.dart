import 'package:cloud_firestore/cloud_firestore.dart';

class database {
  List itemlist = [];
  final CollectionReference profile =
      FirebaseFirestore.instance.collection("attend");

  Future getUserList() async {
    try {
      await profile.get().then((querySnapshot) {
        for (var element in querySnapshot.docs) {
          itemlist.add(element.data());
        }
      });
      return itemlist;
    } catch (e) {
      print(toString());
      return null;
    }
  }
}
