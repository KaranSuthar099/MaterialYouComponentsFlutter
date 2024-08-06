import 'package:flutter/material.dart';
import 'package:material_3/toast_s.dart';

class BadgeWidget extends StatefulWidget {
  const BadgeWidget({super.key});

  @override
  State<BadgeWidget> createState() => _BadgeWidgetState();
}

class _BadgeWidgetState extends State<BadgeWidget> {
  int badgeValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton.filled(
                onPressed: () {
                  ToastS.showToast("Badge Icon", context);
                },
                icon: Badge(
                  label: Text(badgeValue.toString()),
                  child: const Icon(Icons.message_rounded),
                ),
              ),
              IconButton.filledTonal(
                onPressed: () {
                  badgeValue++;
                  setState(() {});
                },
                icon: const Icon(Icons.plus_one_rounded),
              ),
              IconButton.filledTonal(
                onPressed: () {
                  if (badgeValue > 0) {
                    badgeValue--;
                  }
                  setState(() {});
                },
                icon: const Icon(Icons.exposure_minus_1_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
