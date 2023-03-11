import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CalCircle extends StatefulWidget {
  const CalCircle({super.key});

  @override
  State<CalCircle> createState() => _CalCircle();
}


class _CalCircle extends State<CalCircle>{
  @override
  Widget build(BuildContext context){
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:Colors.amber,

          ),

        ),
      );
  }
}
