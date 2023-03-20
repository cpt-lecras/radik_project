import 'package:flutter/material.dart';

class SAbout extends StatefulWidget{
  const SAbout({super.key});

  @override
  State<SAbout> createState() => _SAbout();
}

class _SAbout extends State<SAbout>{



  @override
  Widget build(BuildContext context){
    return
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                InkWell(
                  //onTap: ,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.arrow_back
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,0,0),
                  child: Text(
                    'О приложении',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Icon(
                      Icons.construction,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}