import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({super.key});

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  List<Widget> mainScreenList = [
    const Center(child: Text("Screen 1")),
    const Center(child: Text("Screen 2")),
    const Center(child: Text("Screen 3")),
    const Center(child: Text("Screen 4")),
    const Center(child: Text("Screen 5")),
  ];

  int selectionItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.more_vert_rounded),
          );
        }),
      ),
      body: mainScreenList[selectionItem],
      drawer: Builder(builder: (context) {
        return NavigationDrawer(
          children: [
            NavigationTile(
              titleText: "custom ListTile 1",
              leadingWidget: const Icon(Icons.home_rounded),
              onPress: () {
                Scaffold.of(context).closeDrawer();
                setState(() {
                  selectionItem = 0;
                });
              },
            ),
            Builder(builder: (context) {
              return NavigationTile(
                titleText: "custom ListTile 2",
                leadingWidget: const Icon(Icons.home_rounded),
                onPress: () {
                  Scaffold.of(context).closeDrawer();
                  setState(() {
                    selectionItem = 1;
                  });
                },
              );
            }),
            Builder(builder: (context) {
              return NavigationTile(
                titleText: "custom ListTile 3",
                leadingWidget: const Icon(Icons.home_rounded),
                onPress: () {
                  Scaffold.of(context).closeDrawer();
                  setState(() {
                    selectionItem = 2;
                  });
                },
              );
            }),
            Builder(builder: (context) {
              return NavigationTile(
                titleText: "custom ListTile 4",
                leadingWidget: const Icon(Icons.home_rounded),
                onPress: () {
                  Scaffold.of(context).closeDrawer();
                  setState(() {
                    selectionItem = 3;
                  });
                },
              );
            }),
            Builder(builder: (context) {
              return NavigationTile(
                titleText: "custom ListTile 5",
                leadingWidget: const Icon(Icons.home_rounded),
                onPress: () {
                  Scaffold.of(context).closeDrawer();
                  setState(() {
                    selectionItem = 4;
                  });
                },
              );
            }),
          ],
        );
      }),
    );
  }
}

class NavigationTile extends StatelessWidget {
  const NavigationTile({
    super.key,
    required this.titleText,
    required this.leadingWidget,
    required this.onPress,
  });

  final String titleText;
  final Widget leadingWidget;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0,
        color: Colors.grey[300],
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            onPress();
          },
          child: ListTile(
            leading: leadingWidget,
            title: Text(titleText),
          ),
        ),
      ),
    );
  }
}
