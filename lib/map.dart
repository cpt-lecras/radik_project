import 'package:flutter/material.dart';

class Map extends StatefulWidget{
  const Map({super.key});

  @override
  State<Map> createState() => _Map();
}

class _Map extends State<Map>{
  @override
  Widget build(BuildContext context){
    return const Center(
          child: Text('map'),
      );

  }

}