import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';

class Settings extends StatefulWidget{
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {

  bool IndexThemeIcon=false;
  IconData iconThemeSun= Icons.sunny ;
  IconData iconThemeDark= Icons.nights_stay_outlined ;

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
                        'Settings',
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MainTheme[1],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Theme',
                        style: TextStyle(
                          color: MainTheme[3],
                          fontSize: 25,

                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),

                      child: IconButton(

                          onPressed: (){
                            setState((){
                              IndexThemeIcon= !IndexThemeIcon;
                              ThemeSetter(IndexThemeIcon);
                            }
                            );
                          },

                          icon:Icon(
                            (IndexThemeIcon ? iconThemeDark : iconThemeSun),
                            color: (IndexThemeIcon ? Colors.blueGrey : Colors.amberAccent),
                            size: 40,
                          )

                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}



