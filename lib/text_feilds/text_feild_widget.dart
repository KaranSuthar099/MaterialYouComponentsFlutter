import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextFeildWidget extends StatefulWidget {
  const TextFeildWidget({super.key});

  @override
  State<TextFeildWidget> createState() => _TextFeildWidgetState();
}

class _TextFeildWidgetState extends State<TextFeildWidget> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                dragStartBehavior: DragStartBehavior.down,
                // maxLength: 5,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold),

                  prefixIcon: const Icon(Icons.search_rounded),
                  // errorText: "error",
                  // errorStyle: const TextStyle(
                  //     color: Colors.red, fontWeight: FontWeight.bold),

                  suffixIcon: IconButton(
                    onPressed: () {
                      print(controller.text);
                      controller.clear();
                    },
                    icon: const Icon(Icons.close),
                  ),

                  // border style
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    gapPadding: 50,
                  ),

                  // fill
                  filled: true,
                  fillColor: Colors.grey[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
