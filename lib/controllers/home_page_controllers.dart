import 'package:basic/constants/fire_base_const.dart';
import 'package:basic/pages/home_page.dart';
import 'package:basic/pages/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class authController extends GetxController {
  Future<void> loginMethod({email, password, context}) async {
    try {
      auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Get.to(() => HomePage());
      });
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  Future<void> signUp({email, password, context, confirmPassword, name}) async {
    try {
      if (password == confirmPassword) {
        auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => Get.to(() => HomePage()));
      }
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  logOut() async{
    try{
      auth.signOut().then((value) {
        Get.to(()=>LoginPage());
      });
    } on FirebaseException catch(e){
      print(e);
    }
  }
}
