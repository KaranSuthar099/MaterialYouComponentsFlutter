import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: ShowBottomSheet(),
        ),
      ),
    );
  }
}

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              Scaffold.of(context).showBottomSheet(
                (context) {
                  return const PersistentBottomSheet();
                },
              );
            },
            child: const Text("show Persistent bottom sheet"),
          ),
          FilledButton.tonal(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(20),
                    child: const Column(
                      children: [
                        Text("This is a Modal Bottom Sheet"),
                        Text("Can close this by tapping in the background")
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text("Show Modal Bottom Sheet"),
          ),
        ],
      ),
    );
  }
}

class PersistentBottomSheet extends StatelessWidget {
  const PersistentBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const Text("This is a Persistent Bottom sheet"),
            FilledButton(
              child: const Text("colse botton Sheet "),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
