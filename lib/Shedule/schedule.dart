import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:radik_project/Shedule/calendar.dart';

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
                child: DatePicker(
                  DateTime.now(),
                  height: 80,
                  width: 60,
                  initialSelectedDate: DateTime.now(),


                  selectionColor: Colors.blue,
                  selectedTextColor: Colors.orange,
                  dateTextStyle: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple
                  ),
                ),
              ),



          //shedule
          Expanded(
            child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
    ),
          ),
        ],
      );
  }
}

