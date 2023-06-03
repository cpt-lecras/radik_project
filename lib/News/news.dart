import 'package:flutter/material.dart';
import 'newsList.dart';
import 'package:radik_project/News/dataList.dart';
import 'package:html/parser.dart';
import 'package:requests/requests.dart';
import 'package:http/http.dart' as http;
import 'package:radik_project/Theme.dart';
class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _News();
}

class _News extends State<News> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: const Text(
                  'News',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        news_page(),
      ],
    );
  }
}

class news_page extends StatelessWidget {

  void Tab(BuildContext context, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => NewsList(
                index: index,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: TextTitle.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Flexible(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MainTheme[1], //color
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 500,
                          height: 240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: MainTheme[1],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: assetImages.elementAt(index),
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          width: 500,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: MainTheme[1],
                          ),
                          child:  TextTitle.elementAt(index),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 500,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: MainTheme[1],
                        ),
                        child: Stack(
                          children: [
                            Flexible(
                              child: TextNews.elementAt(index),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: MainTheme[2]),
                                    child: GestureDetector(
                                      onTap: () {
                                        Tab(context, index);
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 30,
                                        color: MainTheme[1],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
