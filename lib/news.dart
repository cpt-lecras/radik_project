import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _News();
}

class _News extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {

            return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.amber,
                    width: 5,
                  )
              ),
              child: const Image(
                image: NetworkImage(
                    'https://voss-metall.ru/assets/images/novosti.jpg'),
              ),
            ),
            );

          }
        ),
    );
  }
}