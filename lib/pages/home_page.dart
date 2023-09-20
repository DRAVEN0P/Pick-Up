import 'package:basic/constants/fire_base_const.dart';
import 'package:basic/controllers/home_page_controllers.dart';
import 'package:basic/custom_widgets/home_page_widget.dart';
import 'package:basic/pages/login_page.dart';
import 'package:basic/pages/pick_up_page.dart';
import 'package:basic/pages/request_a_pickup_page.dart';
import 'package:basic/pages/sub_pages/about_sub_page.dart';
import 'package:basic/pages/sub_pages/home_sub_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget? currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = HomeSubPage(
      toPickUpPage: toPickUpPage,
      toRegisterPage: toRequestPickUp,
    );
  }

  void logout() {
    auth.signOut().then((value) {
      Get.to(() => LoginPage());
    });
  }

  toHome() {
    setState(() {
      currentPage = HomeSubPage(
        toPickUpPage: toPickUpPage,
        toRegisterPage: toRequestPickUp,
      );
    });
    Navigator.pop(context);
  }

  toAbout() {
    setState(() {
      currentPage = const AboutSubPage();
    });
    Navigator.pop(context);
  }

  void toPickUpPage() {
    setState(() {
      currentPage = const PickUpPage();
    });
  }

  void toRequestPickUp() {
    setState(() {
      currentPage = RequestPickUpPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(toAbout: toAbout, toHome: toHome),
      appBar: AppBar(
        title: const Text("Pick-Up"),
        actions: <Widget>[
          IconButton(
            onPressed: logout,
            icon: const Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
