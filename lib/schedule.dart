import 'package:flutter/material.dart';

class Schedule extends StatefulWidget{
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _Schedule();
}

class _Schedule extends State<Schedule>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          //tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Расписание'),
      ),
      body: const Center(
        child: Text('schedule', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

