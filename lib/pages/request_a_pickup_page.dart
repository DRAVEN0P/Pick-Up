import 'package:basic/custom_widgets/login_register_widget.dart';
import 'package:flutter/material.dart';

class RequestPickUpPage extends StatelessWidget {
  RequestPickUpPage({super.key});

  final pickupController = TextEditingController();
  final nameController = TextEditingController();
  final timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Create a Request",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 30),
          InputArea(
              validator: (value) {},
              isObscureText: false,
              hintText: "Pickup Point",
              controller: pickupController),
          const SizedBox(height: 10),
          InputArea(
              validator: (value) {},
              isObscureText: false,
              hintText: "Name of the delivery guy",
              controller: nameController),
          const SizedBox(height: 15),
          InputArea(
              validator: (value) {},
              isObscureText: false,
              hintText: "Time e.g - 12:30",
              controller: nameController),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 160, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
