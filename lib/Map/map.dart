import 'package:flutter/material.dart';

class Map extends StatefulWidget{
  const Map({super.key});

  @override
  State<Map> createState() => _Map();
}

class _Map extends State<Map>{
  @override
  Widget build(BuildContext context){
    return
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Text(
                      'Map',
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

            Padding(
              padding: EdgeInsets.all(8.0),
              child:Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0)
                  ),

                  child: InteractiveViewer(
                    child: Image(image: AssetImage('assets/images/map.png')),
                  ),
                ),
              ),
            ),
          ],
        );
  }

}