import 'package:basic/custom_widgets/login_register_widget.dart';
import 'package:basic/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void register() {
      formKey.currentState!.validate();
    }

    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: SizedBox(
          width: double.infinity,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "QUIZ-O",
                  style: GoogleFonts.acme(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 30),
                InputArea(
                  isObscureText: false,
                  hintText: "Name",
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a Name';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 10),
                InputArea(
                    isObscureText: false,
                    hintText: "Email Address",
                    validator: (value) {
                      if (value!.isEmpty ||
                          (!value.contains('@') || !value.contains('.'))) {
                        return 'Please Enter a Email';
                      } else {
                        return null;
                      }
                    },
                    controller: emailController),
                const SizedBox(height: 10),
                InputArea(
                    isObscureText: true,
                    hintText: "Password",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter a Password';
                      } else {
                        return null;
                      }
                    },
                    controller: passwordController),
                const SizedBox(height: 10),
                InputArea(
                    isObscureText: true,
                    hintText: "Confirm Password",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter a Password';
                      } else {
                        return null;
                      }
                    },
                    controller: confirmController),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: register,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 145, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text("Register"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have a account?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => LoginPage(),
                              transition: Transition.fade,
                              duration: const Duration(seconds: 1));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 27, 200),
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
