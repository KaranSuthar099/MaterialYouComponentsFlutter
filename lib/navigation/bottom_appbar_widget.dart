import 'package:flutter/material.dart';

class BottomAppbarWidget extends StatelessWidget {
  const BottomAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_rounded),
                ),
              ],
            )
          ],
        ),
      ),
      body: const Center(
        child: Text("Bottom AppBar"),
      ),
    );
  }
}
