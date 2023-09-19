import 'package:basic/constants/fire_base_const.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class authController extends GetxController {

  Future loginMethod({email, password, context}) async {
    try {
      auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print("Done");
      });
    } on FirebaseException catch (e) {
      print(e);
    }
    return 0;
  }

  Future signUp(){

  }
}
