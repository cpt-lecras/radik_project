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
      Scaffold(
        backgroundColor: Colors.white,

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
                        color: Colors.deepPurple,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
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