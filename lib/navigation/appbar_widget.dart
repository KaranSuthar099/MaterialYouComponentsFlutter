import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.mail_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        ],
        title: const Text("AppBar"),
        elevation: 5,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded)),
      ),
    );
  }
}
