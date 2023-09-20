import 'dart:ffi';

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    required this.toAbout,
    required this.toHome,
    super.key,
  });

  final void Function() toHome;
  final void Function() toAbout;

  @override
  Widget build(BuildContext context) {
    String name = "Hello";
    return Drawer(
      shadowColor: Colors.black,
      backgroundColor: Colors.blue[200],
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          alignment: AlignmentDirectional.bottomStart,
          decoration: const BoxDecoration(color: Colors.blue),
          width: double.infinity,
          height: 200,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SideBarButton(
          text: "Home",
          onTap: toHome,
        ),
        SideBarButton(
          text: "About",
          onTap: toAbout,
        ),
        // SideBarButton(text: "",onTap: toAbout,),
      ]),
    );
  }
}

class SideBarButton extends StatelessWidget {
  const SideBarButton({required this.onTap, required this.text, super.key});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(color: Colors.blue[200]),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  CardContainer({required this.onTap, super.key, required this.text, required this.color});
  String text;
  final Function() onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20)
          ),
          height: 200,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
