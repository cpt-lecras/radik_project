import 'package:flutter/material.dart';

class Settings extends StatefulWidget{
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Text('Sttings'),
            ),
          ],
        ),
      ),
    );
  }
}



