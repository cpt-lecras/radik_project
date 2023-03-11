import 'package:flutter/material.dart';

class News extends StatefulWidget{
  const News({super.key});

  @override
  State<News> createState() => _News();
}

class _News extends State<News>{@override
Widget build(BuildContext context){
  return
    Column(
      children: [
         Expanded(
           child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context,index) {
                return
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:Colors.amberAccent,

                    ),

                  ),
                );
              },
            ),
         ),

      ],
    );
}

}