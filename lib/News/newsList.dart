import 'package:flutter/material.dart';
import 'package:radik_project/News/dataList.dart';

class NewsList extends StatelessWidget {
  final int index;

  NewsList({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context, false),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: assetImages.elementAt(index),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
