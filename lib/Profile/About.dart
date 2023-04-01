import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';

class SAbout extends StatefulWidget{
  const SAbout({super.key});

  @override
  State<SAbout> createState() => _SAbout();
}

class _SAbout extends State<SAbout>{



  @override
  Widget build(BuildContext context){
    return
      Scaffold(
        backgroundColor: MainTheme[0],

        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context, false),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: MainTheme[3],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text('About'),
              ),
            ],
          ),
        ),
      );
  }
}