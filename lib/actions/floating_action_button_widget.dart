import 'package:flutter/material.dart';
import 'package:material_3/toast_s.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ToastS.showToast("Floating Action", context);
          },
          child: const Icon(Icons.add_rounded),
        ),
      ),
    );
  }
}
