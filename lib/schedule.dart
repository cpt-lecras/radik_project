import 'package:flutter/material.dart';

class Schedule extends StatefulWidget{
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _Schedule();
}

class _Schedule extends State<Schedule>{
  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text('Schedule'),
    );

  }

}