import 'package:basic/controllers/home_page_controllers.dart';
import 'package:basic/custom_widgets/login_register_widget.dart';
import 'package:basic/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    void login() {
      formKey.currentState!.validate();
      final controller = Get.put(authController());
      controller.loginMethod(email: emailController.text, password: passwordController.text);
    }

    void toRegisterPage() {
      Get.to(() => RegisterPage(), transition: Transition.fadeIn);
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
                "Pick-Up",
                style: GoogleFonts.acme(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(height: 30),
              InputArea(
                  validator: (value) {
                    if (value!.isEmpty ||
                        !value.contains('@') ||
                        !value.contains('.')) {
                      return 'Please Enter a valid Email';
                    }
                  },
                  isObscureText: false,
                  hintText: "Email",
                  controller: emailController),
              const SizedBox(height: 15),
              InputArea(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid Password';
                    } else {
                      return null;
                    }
                  },
                  isObscureText: true,
                  hintText: "Password",
                  controller: passwordController),
              const SizedBox(height: 20),
              TextButton(
                onPressed: login,
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
                child: const Text("Login"),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not a Member?",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: toRegisterPage,
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 27, 200),
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
