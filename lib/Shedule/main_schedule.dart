import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:radik_project/Shedule/Cell_of_shedule.dart';
import 'package:radik_project/Theme.dart';
import 'package:radik_project/Shedule/data.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _Schedule();
}

class _Schedule extends State<Schedule> {
  DateTime selectedDate = DateTime.now();

  void _handleDateChanged(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //calendar
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'Shedule',
                  style: TextStyle(
                    color: MainTheme[4],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 15),
          child: Container(
            height: 80,
            color: MainTheme[0],
            child: DatePicker(
              DateTime.now(),
              onDateChange: _handleDateChanged,
              height: 70,
              width: 60,
              initialSelectedDate: DateTime.now(),
              selectionColor: MainTheme[3],
              selectedTextColor: MainTheme[0],
              dayTextStyle: TextStyle(
                color: MainTheme[3],
              ),
              monthTextStyle: TextStyle(
                color: MainTheme[3],
              ),
              dateTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: MainTheme[3]),
            ),
          ),
        ),
        CalCircle(selectedDate: selectedDate),
      ],
    );
  }
}