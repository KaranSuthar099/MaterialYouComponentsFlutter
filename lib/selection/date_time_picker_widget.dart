import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({super.key});

  @override
  State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime? datePickerValue = DateTime.now();
  TimeOfDay? timePickerValue = TimeOfDay.now();

  void showDatePickerWidget() {
    showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    ).then(
      (value) {
        if (value != null) {
          setState(() {
            datePickerValue = value;
          });
        }
      },
    );
  }

  void showTimePickerWidget() {
    showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
    ).then(
      (value) {
        if (value != null) {
          setState(() {
            timePickerValue = value;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${datePickerValue!.day}/${datePickerValue!.month}/${datePickerValue!.year}",
              style: const TextStyle(fontSize: 20),
            ),
            FilledButton(
              onPressed: () {
                showDatePickerWidget();
              },
              child: const Text("Show Date Picker"),
            ),
            Text(
              timePickerValue!.format(context).toString(),
              style: const TextStyle(fontSize: 20),
            ),
            FilledButton(
              onPressed: () {
                showTimePickerWidget();
              },
              child: const Text("Show Time Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
