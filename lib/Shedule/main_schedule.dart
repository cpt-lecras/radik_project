import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:radik_project/Shedule/Cell_of_shedule.dart';

class Schedule extends StatefulWidget{
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _Schedule();
}

class _Schedule extends State<Schedule>{

  @override
  Widget build(BuildContext context){
    return
      Column(
        children: [
          //calendar

              Container(
                height: 80,
                color: Colors.black,
                child: DatePicker(
                  DateTime.now(),
                  height: 70,
                  width: 60,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.amberAccent,
                  selectedTextColor: Colors.black,
                  dayTextStyle: const TextStyle(
                    color: Colors.amber,
                  ),
                  monthTextStyle: const TextStyle(
                    color: Colors.amber,
                  ),
                  dateTextStyle: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber
                  ),
                ),
              ),
          //shedule
            const CalCircle(),
        ],
      );
  }
}

