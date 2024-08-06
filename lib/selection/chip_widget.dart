import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Chip(
              label: Text("this is a chip"),
            ),
            const Chip(
              label: Text("this is a chip with leading avatar"),
              avatar: CircleAvatar(
                child: Icon(
                  Icons.icecream_rounded,
                  size: 15,
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                isVisible = true;
                setState(() {});
              },
              child: const Text("Show Chip"),
            ),
            if (isVisible)
              Chip(
                label: const Text("this is a chip with delete button"),
                deleteIcon: const CircleAvatar(
                  child: Icon(Icons.close_rounded, size: 15),
                ),
                onDeleted: () {
                  isVisible = false;
                  setState(() {});
                },
              )
            else
              Container(),
            Chip(
              label: const Text(
                  "this is a chip with leading avatar and delete button"),
              avatar: const CircleAvatar(
                child: Icon(
                  Icons.icecream_rounded,
                  size: 15,
                ),
              ),
              deleteIcon: const CircleAvatar(
                child: Icon(Icons.close_rounded, size: 15),
              ),
              onDeleted: () {},
            ),
          ],
        ),
      ),
    );
  }
}
