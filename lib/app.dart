import 'package:flutter/material.dart';
import 'package:material_3/selection/date_time_picker_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
      ),
      home: const DateTimePickerWidget(), // change the widgets here to try all
    );
  }
}
