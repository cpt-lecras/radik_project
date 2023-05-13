import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:radik_project/Theme.dart';
import 'package:radik_project/Shedule/main_schedule.dart';
import 'package:radik_project/Shedule/data.dart';

class CalCircle extends StatelessWidget {

  final DateTime selectedDate;

  CalCircle({required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index){
              final dayOfWeek = DateTime(selectedDate.year, selectedDate.month, selectedDate.day).weekday;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MainTheme[1],
                    boxShadow: [
                      BoxShadow(color: MainTheme[1],
                          offset: Offset(-1, 1),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ],
                  ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Container(
                            height: 100,
                            //width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: MainTheme[1],
                            ),
                            child:
                            Center(
                              child: TimePar.elementAt(index),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                              height: 100,
                              //width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MainTheme[1],
                              ),
                              child: Center(
                                child: _getWeekdayName(dayOfWeek).elementAt(index),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MainTheme[0],
                            ),

                            child: Center(
                              child: _getTypePar(dayOfWeek).elementAt(index),
                            ),

                          ),
                        ),
                      ],
                    ),

                ),
              );
            }
            ),
    );
  }
}

List<Text> _getWeekdayName(int weekday) {
  switch (weekday) {
    case DateTime.monday:
      return Monday;
    case DateTime.tuesday:
      return Tuesday;
    case DateTime.wednesday:
      return Wednesday;
    case DateTime.thursday:
      return Thursday;
    case DateTime.friday:
      return Friday;
    case DateTime.saturday:
      return Saturday;
    case DateTime.sunday:
      return Sunday;
    default:
      return List.empty();
  }
}
List<Text> _getTypePar(int weekday) {
  switch (weekday) {
    case DateTime.monday:
      return MondayTypePar;
    case DateTime.tuesday:
      return TuesdayTypePar;
    case DateTime.wednesday:
      return WednesdayTypePar;
    case DateTime.thursday:
      return ThursdayTypePar;
    case DateTime.friday:
      return FridayTypePar;
    case DateTime.saturday:
      return SaturdayTypePar;
    case DateTime.sunday:
      return SundayTypePar;
    default:
      return List.empty();
  }
}


