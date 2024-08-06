import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(indent: 30, endIndent: 30),
            const ListTile(
              title: Text("ListTile with title"),
            ),
            const Divider(indent: 30, endIndent: 30),
            const ListTile(
              title: Text("ListTile with title and subtitle"),
              subtitle: Text("This is a subtitle"),
            ),
            const Divider(indent: 30, endIndent: 30),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.ac_unit_rounded),
              ),
              title: Text("ListTile with title and subtitle"),
              subtitle: Text("And a leading Widget"),
            ),
            const Divider(indent: 30, endIndent: 30),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.ac_unit_rounded),
              ),
              title: const Text("ListTile with title and subtitle"),
              subtitle: const Text("And a leading and trailing widget"),
              trailing: IconButton.filledTonal(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
            ),
            const Divider(indent: 30, endIndent: 30),
          ],
        ),
      ),
    );
  }
}
