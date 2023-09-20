import 'package:basic/custom_widgets/home_page_widget.dart';
import 'package:basic/pages/pick_up_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSubPage extends StatelessWidget {
  const HomeSubPage({super.key, required this.toPickUpPage,required this.toRegisterPage});

  final Function() toPickUpPage;
  final Function() toRegisterPage;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 30),
        CardContainer(
          color: Colors.yellow.shade400,
          text: "Pick-Up",
          onTap: toPickUpPage,
        ),
        // SizedBox(height: 5),
        CardContainer(
          color: Colors.lightGreenAccent.shade400,
          text: "Request a Pick-Up",
          onTap: toRegisterPage,
        ),
      ],
    );
  }
}
