import 'package:flutter/material.dart';

class News extends StatefulWidget{
  const News({super.key});

  @override
  State<News> createState() => _News();
}

class _News extends State<News>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('News'),
    );

  }

}