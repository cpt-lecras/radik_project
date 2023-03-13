import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CalCircle extends StatefulWidget {
  const CalCircle({super.key});

  @override
  State<CalCircle> createState() => _CalCircle();
}

  const List<Text> TimePar = <Text>[
  Text('8:10\n9:45', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center),
  Text('9:55\n11:30', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center),
  Text('11:40\n13:15', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center),
  Text('13:35\n15:10', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center),
  Text('15:20\n16:55', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center),
  Text('17:05\n18:40', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center),
  Text('18:50\n20:15', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center),
];


class _CalCircle extends State<CalCircle>{

  /*_CalCircle(int index){
    int selectedIndex=index;
  }*/
  
    Padding method(){

    int selectedIndex=0;
    //_CalCircle(selectedIndex);

    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:Colors.amber,
            boxShadow: const [
              BoxShadow(color: Colors.amberAccent,offset: Offset(-1,1),blurRadius: 5,spreadRadius: 1)
            ],
          ),

          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(

                  height: 100,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber,
                  ),
                  child:
                  Center(

                    child: TimePar.elementAt(selectedIndex),
                  ),


                ),
              ),
              Container(
                //padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:Colors.amber,
                ),
                child: const Center(
                  child: Text(
                    'Мат. анализ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:Colors.amber,
                  ),

                  child: const Center(
                    child: Text(
                        'ЛК',
                        style: TextStyle(fontSize: 28,color: Colors.black)
                    ),
                  ),

                ),
              ),


            ],
          ),


        ),
      );

    }

    @override
    Widget build(BuildContext context){
      return
        method();
    }
}
