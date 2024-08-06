import 'package:flutter/material.dart';

class NavigationRailWidget extends StatefulWidget {
  const NavigationRailWidget({super.key});

  @override
  State<NavigationRailWidget> createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget> {
  int _selectedIndex = 0;

  List<Widget> destinationScreen = [
    const Center(child: Text("home")),
    const Center(child: Text("favorite")),
    const Center(child: Text("settings")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            elevation: 10,
            labelType: NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.home_rounded), label: Text("Home")),
              NavigationRailDestination(
                  icon: Icon(Icons.favorite_rounded), label: Text("Favorite")),
              NavigationRailDestination(
                  icon: Icon(Icons.settings_rounded), label: Text("Setting")),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (value) {
              _selectedIndex = value;
              setState(() {});
            },
          ),
          Expanded(
            child: destinationScreen[_selectedIndex],
          )
        ],
      ),
    );
  }
}
