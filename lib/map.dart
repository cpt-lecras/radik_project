import 'package:flutter/material.dart';

class Map extends StatefulWidget{
  const Map({super.key});

  @override
  State<Map> createState() => _Map();
}

class _Map extends State<Map>{
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
        title: const Text('Карта'),
      ),
      body: const Center(
        child: Text('map', style: TextStyle(color: Colors.white)),
      ),
    );
  }

}