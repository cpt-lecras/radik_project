import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class CalCircle extends StatelessWidget{




  @override
  Widget build(BuildContext context){
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.indigoAccent,
          ),
        ),

      );
  }
}