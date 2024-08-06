import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatefulWidget {
  const LinearProgressIndicatorWidget({super.key});

  @override
  State<LinearProgressIndicatorWidget> createState() =>
      _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState
    extends State<LinearProgressIndicatorWidget> {
  double progressValue = 0.0;

  Future<void> animateProgressIndicator() async {
    // set the value initially to 0%
    progressValue = 0.0;
    setState(() {}); // update

    // after 1 sec make the progress to 10%
    await Future.delayed(const Duration(seconds: 1));
    progressValue = 0.10;
    setState(() {});

    // after 1 sec make the progress to 90%
    await Future.delayed(const Duration(seconds: 1));
    progressValue = 0.9;
    setState(() {});

    // after one more second make it 100%
    await Future.delayed(const Duration(seconds: 1));
    progressValue = 1.0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(
                onPressed: () {
                  animateProgressIndicator();
                },
                child: const Text("Animate ProgressIndicator"),
              ),
              const SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(
                value: progressValue,
                borderRadius: BorderRadius.circular(10),
              ),
              const SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
