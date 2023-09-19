import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  const InputArea(
      {required this.validator,
      required this.isObscureText,
      required this.hintText,
      required this.controller,
      super.key});

  final dynamic controller;
  final String hintText;
  final bool isObscureText;
  final dynamic validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextFormField(
            key: ValueKey(hintText),
            controller: controller,
            obscureText: isObscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
            validator: validator,
          ),
        ),
      ),
    );
  }
}
