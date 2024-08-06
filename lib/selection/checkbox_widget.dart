import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? checkBoolean = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: checkBoolean,
              tristate: false,
              onChanged: (value) {
                checkBoolean = value;
                setState(() {});
                print(checkBoolean);
              },
            ),
            const Text("CheckBox")
          ],
        ),
      ),
    );
  }
}
