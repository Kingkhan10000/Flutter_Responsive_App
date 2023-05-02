// ignore: file_names
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabletView extends StatelessWidget {
  TabletView({super.key, this.primarycolor});

  var primarycolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: primarycolor,
      child: Center(
        child: TextButton(
            child: const Text(
              "Click for Size",
              style: TextStyle(
                backgroundColor: Colors.blue,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            onPressed: () {
              print(
                MediaQuery.of(context).size.width,
              );
            }),
      ),
    );
  }
}
