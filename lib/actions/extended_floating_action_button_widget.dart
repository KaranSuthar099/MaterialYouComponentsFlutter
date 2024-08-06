import 'package:flutter/material.dart';
import 'package:material_3/toast_s.dart';

class ExtendedFloatingActionButtonWidget extends StatelessWidget {
  const ExtendedFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("Extended Floation Action Button"),
          icon: const Icon(Icons.add_rounded),
          onPressed: () {
            ToastS.showToast("Extened Floating Action", context);
          },
        ),
      ),
    );
  }
}
