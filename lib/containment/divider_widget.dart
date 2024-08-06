import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              child: const Card(
                child: Center(
                  child: Column(
                    children: [
                      Text("Divider with height 10"),
                      Divider(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              indent: 32,
              endIndent: 32,
              color: Colors.black,
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              child: const Card(
                child: Center(
                  child: Column(
                    children: [
                      Text("Divider with thickness 5"),
                      Divider(
                        thickness: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              indent: 32,
              endIndent: 32,
              color: Colors.black,
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              child: const Card(
                child: Center(
                  child: Column(
                    children: [
                      Text("Divider with Indent 30"),
                      Divider(
                        indent: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              indent: 32,
              endIndent: 32,
              color: Colors.black,
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              child: const Card(
                child: Center(
                  child: Column(
                    children: [
                      Text("Divider with EndIndent 30"),
                      Divider(
                        endIndent: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              indent: 32,
              endIndent: 32,
              color: Colors.black,
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              child: const Card(
                child: Center(
                  child: Column(
                    children: [
                      Text("Divider with color black"),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
