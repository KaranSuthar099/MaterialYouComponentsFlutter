import 'package:flutter/material.dart';

class SnackbarWidget extends StatefulWidget {
  const SnackbarWidget({super.key});

  @override
  State<SnackbarWidget> createState() => _SnackbarWidgetState();
}

class _SnackbarWidgetState extends State<SnackbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {
              // make a snackbar
              SnackBar snackBar = SnackBar(
                content: const Text("this is a SnackBar"),
                duration: const Duration(seconds: 2),
                action: SnackBarAction(
                  label: "Action",
                  onPressed: () {
                    // see in debug console
                    print("SnackBar Action Pressed");
                  },
                ),
              );

              // showing snackbar in scaffold
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text("Show Snackbar"),
          ),
        ),
      ),
    );
  }
}
