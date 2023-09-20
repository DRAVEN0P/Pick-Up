import 'package:flutter/material.dart';

class AboutSubPage extends StatelessWidget {
  const AboutSubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ABOUT',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'WE ALL ORDER AND RECEIVE PARCELS FROM AMAZON QUITE FREQUENTLY IN VIT.'
              '. BUT COLLECTING THE PACKAGES SOMETIMES ARE A PROBLEM, BECAUSE OUR ACADEMIC BLOCKS OR THE HOSTEL BLOCKS ARE QUITE FAR AWAY FROM THE PICKUP POINT. '
              '\n'
              '\n'
              'THIS APP HELPS YOU TO OVERCOME THIS PROBLEM.'
              'IN THIS APP, SOMEONE ELSE WHO IS NEAR THE LIBRARY AND IS WILLING TO ACCEPT THE PACKAGE FOR YOU, WILL RECEIVE AND DELIVER THE PACKAGE TO YOU.'
              'THE STEPS FOR USING THE APP ARE:'
              '\n'
              '\n'
              '1.	FIRST, REGISTER YOURSELF WITH YOUR VIT CREDENTIALS'
              '\n'
              '\n'
              '2.	TO SEND REQUEST, CLICK SEND REQUEST'
              '\n'
              '\n'
              '3.	ONCE SOMEBODY ACCEPTS YOUR REQUEST, HE WILL PICK THE PACKASGE UP FOR YOU AND DELIVER IT TO YOU'
              '\n'
              '\n'
              '4.	AFTER THE PERSON RECEIVES THE PACKAGES, HE WILL SEND A PICTURE TO YOU AFTER WHICH YOU CAN TICK A SECURITY CHECK'
              '\n'
              '\n'
              '5.	AFTER YOU RECEIVE THE PACKAGE, YOU CAN TICK OFF ONE MORE SECURITY CHECK AND CLICK RECEIVED.'
              '\n'
              '\n'
              '\n'
              'Regards'
              '\n'
              'Team PickUp'
              ,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
