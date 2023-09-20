import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:basic/custom_widgets/pickup_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class PickUpPage extends StatelessWidget {
  const PickUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: 20),
      PickUpRequests(
        onTap: () {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.confirm,
            text: 'Do you want to Accept?',
            confirmBtnText: 'Yes',
            cancelBtnText: 'No',
          );
        },
        name: "Akash",
        time: "12:30 pm",
        venue: "Amazon Pick-Up point",
      ),
      PickUpRequests(
        onTap: () {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.confirm,
            text: 'Do you want to Accept?',
            confirmBtnText: 'Yes',
            cancelBtnText: 'No',
          );
        },
        name: "Aman",
        time: "10:00 am",
        venue: "Amazon Pick-Up point",
      ),
    ]);
  }
}
