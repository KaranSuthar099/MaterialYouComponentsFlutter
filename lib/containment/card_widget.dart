import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(10),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("This is a card"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
