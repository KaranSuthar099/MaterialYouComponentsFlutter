import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar"),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: const Center(
                      child: Text("screen one"),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text("screen two"),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text("screen three"),
                    ),
                  )
                ],
              ),
            ),
            TabBar(
              labelStyle: const TextStyle(fontSize: 15),
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              tabs: const [
                Tab(
                  icon: Icon(Icons.home_rounded),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.favorite_rounded),
                  text: "favorite",
                ),
                Tab(
                  icon: Icon(Icons.settings_rounded),
                  text: "settings",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
