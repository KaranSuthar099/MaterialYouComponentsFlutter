import 'package:flutter/material.dart';

class ToastS {
  static void showToast(String buttonName, BuildContext context) {
    SnackBar snackBar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      duration: const Duration(milliseconds: 500),
      content: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "$buttonName Button Pressed 👍",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
