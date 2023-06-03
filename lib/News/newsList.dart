import 'package:flutter/material.dart';
import 'package:radik_project/News/dataList.dart';
import 'package:radik_project/Theme.dart';

class NewsList extends StatelessWidget {
  final int index;

  NewsList({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme[0],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context, false),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: MainTheme[4],
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: assetImages.elementAt(index),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextTitle.elementAt(index)
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextNews.elementAt(index)
              )
            ],
          ),
        ),
      ),
    );
  }
}
