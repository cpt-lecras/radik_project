import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class SAbout extends StatefulWidget {
  const SAbout({super.key});

  @override
  State<SAbout> createState() => _SAbout();
}

class _SAbout extends State<SAbout> {

  Future<void> _launch() async {
    final url = 'https://github.com/cpt-lecras';
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }}

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'О приложении',
                      style: TextStyle(
                        color: MainTheme[3],
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Flexible(
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MainTheme[1], //color
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Версия приложения",
                                            style: TextStyle(color: Colors.white, fontSize: 25,
                                              fontWeight: FontWeight.w500,),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: MainTheme[2],
                                            ),
                                            
                                            child: Text(
                                              "1.0.0",
                                              style: TextStyle(color: Colors.white, fontSize: 20,
                                                fontWeight: FontWeight.bold,),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Это приложение и все относящиеся к нему сервисы являются 100% бесплатными и Open Source продуктами.",
                                        style: TextStyle(color: Colors.white, fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
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
                                    const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Участники проекта',
                                            style: TextStyle(color: Colors.white, fontSize: 25,
                                              fontWeight: FontWeight.w500,),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: InkWell(
                                                onTap: () {
                                                  _launch();
                                                },
                                                child: const GFAvatar(
                                                  radius: 40,
                                                  backgroundImage:NetworkImage('https://avatars.githubusercontent.com/u/55882565?v=4'),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'cpt-lecras',
                                                style: TextStyle(
                                                  color: MainTheme[4],
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: InkWell(
                                                onTap: () {
                                                  _launch();
                                                },
                                                child: const GFAvatar(
                                                  radius: 40,
                                                  backgroundImage:NetworkImage('https://avatars.githubusercontent.com/u/125472455?v=4'),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'HolloW159',
                                                style: TextStyle(
                                                  color: MainTheme[4],
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
