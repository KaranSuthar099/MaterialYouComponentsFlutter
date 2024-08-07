import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  enabled: false,
                  height: 10,
                  child: SizedBox.shrink(),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("item 1"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("item 2"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("item 3"),
                ),
                const PopupMenuItem(
                  enabled: false,
                  height: 10,
                  child: SizedBox.shrink(),
                ),
              ];
            },
            elevation: 5,
            onSelected: (value) {
              print("$value selected");
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ),
      ),
    );
  }
}
