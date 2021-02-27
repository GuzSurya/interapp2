import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserManagement {
  storeNewUser(user, context) {
    FirebaseFirestore.instance.collection("/user").add({
      "email": user.email,
      "uid": user.uid,
      "displayName": user.displayName,
      "photoUrl": ""
    }).then((value) {
      Navigator.of(context).pop();
      Navigator.of(context).pushReplacementNamed("/homepage");
    }).catchError((e) {
      print(e);
    });
  }
}
