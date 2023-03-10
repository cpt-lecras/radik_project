import 'package:flutter/material.dart';

class News extends StatefulWidget{
  const News({super.key});

  @override
  State<News> createState() => _News();
}

class _News extends State<News>{
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
        title: const Text('Новости'),
      ),
      body: const Center(
        child: Text('news', style: TextStyle(color: Colors.white)),
      ),
    );

  }

}