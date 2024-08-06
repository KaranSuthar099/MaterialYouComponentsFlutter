import 'package:flutter/material.dart';
import 'package:material_3/toast_s.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ToastS.showToast("Elevated", context);
                },
                child: const Text("Elevated Button"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  ToastS.showToast("Elevated with Icon", context);
                },
                icon: const Icon(Icons.menu_rounded),
                label: const Text("Elevated Button With Icon"),
              ),
              FilledButton(
                onPressed: () {
                  ToastS.showToast("Filled", context);
                },
                child: const Text("Filled Button"),
              ),
              FilledButton.icon(
                onPressed: () {
                  ToastS.showToast("Filled with Icon", context);
                },
                icon: const Icon(Icons.menu_rounded),
                label: const Text("Filled Button With Icon"),
              ),
              FilledButton.tonal(
                onPressed: () {
                  ToastS.showToast("Filled Tonal", context);
                },
                child: const Text("Filled Tonal Button"),
              ),
              FilledButton.tonalIcon(
                onPressed: () {
                  ToastS.showToast("Filled Tonal with Icon", context);
                },
                icon: const Icon(Icons.menu_rounded),
                label: const Text("Filled Tonal Button With Icon"),
              ),
              OutlinedButton(
                onPressed: () {
                  ToastS.showToast("Outlined", context);
                },
                child: const Text("Outlined Button"),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  ToastS.showToast("Outlined with Icon", context);
                },
                icon: const Icon(Icons.menu_rounded),
                label: const Text("Outlined Button With Icon"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
