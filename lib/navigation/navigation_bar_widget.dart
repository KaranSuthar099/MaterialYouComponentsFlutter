import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedIndex = 0;

  List<Widget> homeWidgets = [
    const Center(
      child: Text(
        "one",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    ),
    const Center(
      child: Text(
        "two",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    ),
    const Center(
      child: Text(
        "three",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    ),
    const Center(
      child: Text(
        "four",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
      
            NavigationDestination(
              icon: Icon(Icons.favorite_rounded),
              label: "Favourite",
            ),
      
            NavigationDestination(
              icon: Icon(Icons.person_rounded),
              label: "Profile",
            ),
      
            NavigationDestination(
              icon: Icon(Icons.settings_rounded),
              label: "Settings",
            ),
          ],
          selectedIndex: selectedIndex,
          onDestinationSelected: (int value) {
            print("current selected index $value");
            selectedIndex = value;
            setState(() {});
          },
        ),
        body: homeWidgets[selectedIndex],
      ),
    );
  }
}
