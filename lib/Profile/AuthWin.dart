import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';

class AuthWin extends StatefulWidget{
  const AuthWin({super.key});

  @override
  State<AuthWin> createState() => _AuthWin();
}

class _AuthWin extends State<AuthWin> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme[0],

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context, false),
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        //color: Colors.deepPurple,
                        child: Icon(
                          Icons.arrow_back,
                          color: MainTheme[3],
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Вход / Регистрация',
                    style: TextStyle(
                      color: MainTheme[3],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(''),

                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}