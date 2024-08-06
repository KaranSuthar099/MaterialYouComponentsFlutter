import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible:
          false, // toggle this to be able to skip by pressing on background
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("this is the title"),
          content: const Text(
              "this is the content of the alert dialog you can put any widget here"),
          actions: [
            FilledButton.tonal(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Yes Pressed"),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: const Text("Yes"),
            ),
            FilledButton.tonal(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("No Pressed"),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: const Text("No"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: FilledButton.tonal(
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text("Show Alert dialog"),
        ),
      ),
    ));
  }
}
