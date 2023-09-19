import 'package:basic/constants/fire_base_const.dart';
import 'package:basic/controllers/home_page_controllers.dart';
import 'package:basic/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            auth.signOut().then((value) {
              Get.to(() => LoginPage());
            });
          },
          child: const Text("LogOut"),
        ),
      ),
    );
  }
}
