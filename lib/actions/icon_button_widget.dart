import 'package:flutter/material.dart';
import 'package:material_3/toast_s.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  ToastS.showToast("Menu", context);
                },
                icon: const Icon(Icons.menu_rounded),
              ),
              IconButton.filled(
                onPressed: () {
                  ToastS.showToast("Filled Search", context);
                },
                icon: const Icon(Icons.search_rounded),
              ),
              IconButton.filledTonal(
                onPressed: () {
                  ToastS.showToast("Filled Tonal Backspace", context);
                },
                icon: const Icon(Icons.backspace_rounded),
              ),
              IconButton.outlined(
                onPressed: () {
                  ToastS.showToast("Outlined Delete", context);
                },
                icon: const Icon(Icons.delete_rounded),
              ),
              IconButton(
                onPressed: () {
                  ToastS.showToast("Save", context);
                },
                icon: const Icon(Icons.save_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
