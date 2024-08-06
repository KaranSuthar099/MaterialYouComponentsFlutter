import 'package:flutter/material.dart';

class SegmentedButtonWidget extends StatefulWidget {
  const SegmentedButtonWidget({super.key});

  @override
  State<SegmentedButtonWidget> createState() => _SegmentedButtonWidgetState();
}

class _SegmentedButtonWidgetState extends State<SegmentedButtonWidget> {
  Set<String> selected = {"inbox"};

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SegmentedButton(
          segments: const [
            ButtonSegment<String>(
              value: "inbox",
              label: Text("Inbox"),
              icon: Icon(Icons.inbox_rounded),
            ),
            ButtonSegment<String>(
              value: "sent",
              label: Text("Sent"),
              icon: Icon(Icons.send_rounded),
            ),
            ButtonSegment<String>(
              value: "spam",
              label: Text("Spam"),
              icon: Icon(Icons.block_rounded),
            ),
            ButtonSegment<String>(
              value: "trash",
              label: Text("Trash"),
              icon: Icon(Icons.delete_rounded),
            ),
          ],
          selected: selected,
          onSelectionChanged: (newSelected) {
            selected = newSelected;
            setState(() {
              print(selected);
            });
          },

          multiSelectionEnabled:
              true, //enable of disable this to select multiple elements
        ),
      ),
    ));
  }
}
