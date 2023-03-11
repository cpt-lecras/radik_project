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
      child: Scrollbar(
        thickness: 20.0,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.amber,
                    width: 5,
                  )
              ),
              child: const Image(
                image: NetworkImage(
                    'https://top-fon.com/uploads/posts/2023-01/1674908321_top-fon-com-p-smi-fon-dlya-prezentatsii-183.jpg'),
              ),
            );
          }
        ),
      ),
    );
  }
}