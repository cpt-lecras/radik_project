import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:radik_project/Theme.dart';

class CalCircle extends StatefulWidget {
  const CalCircle({super.key});

  @override
  State<CalCircle> createState() => _CalCircle();
}

List<Text> TimePar = <Text>[
  Text('8:10\n9:45', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('9:55\n11:30', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('11:40\n-\n13:15', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('13:35\n15:10', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('15:20\n16:55', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('17:05\n18:40', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('18:50\n20:15', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
];

List<Text> NamePar = <Text>[
  Text('--', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('СЦТ', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('ТРПП', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('Теория Вероятностей Математическая статистика.', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('Физ-ра', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('--', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('--', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
];

List<Text> TypePar = <Text>[
  Text('ПР', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('ПР', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('ЛК', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('ПР', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('ПР', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
  Text('', style: TextStyle(fontSize: 15, color: MainTheme[4]),
      textAlign: TextAlign.center),
];

class _CalCircle extends State<CalCircle> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MainTheme[1],
                    boxShadow: [
                      BoxShadow(color: MainTheme[1],
                          offset: Offset(-1, 1),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ],
                  ),




                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Container(
                            height: 100,
                            //width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: MainTheme[1],
                            ),
                            child:
                            Center(
                              child: TimePar.elementAt(index),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                              height: 100,
                              //width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MainTheme[1],
                              ),
                              child: Center(
                                child: NamePar.elementAt(index),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MainTheme[0],
                            ),

                            child: Center(
                              child: TypePar.elementAt(index),
                            ),

                          ),
                        ),
                      ],
                    ),

                ),
              );
            }
            ),
    );
  }
}

