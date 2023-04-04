import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radik_project/Profile/About.dart';
import 'package:radik_project/Profile/settings.dart';
import 'package:radik_project/Profile/AuthWin.dart';
import 'package:radik_project/Theme.dart';
class Account extends StatefulWidget{
  const Account({super.key});

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account>{

  int item=0;

  void SelectSmth(BuildContext context, int item)
  {
    switch (item) {
      case 0:
        {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Settings()),
          );
          break;
        }
      case 1:
        {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SAbout()),
          );
          break;
        }
      case 2:
        {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AuthWin()),
          );
          break;
        }

    }
  }



  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children:  [

                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: GFAvatar(
                      radius: 70,
                      backgroundImage:NetworkImage('https://www.adobe.com/express/create/media_127a4cd0c28c2753638768caf8967503d38d01e4c.jpeg?width=400&format=jpeg&optimize=medium'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Name Surname',
                      style: TextStyle(
                        color: MainTheme[4],
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                      'email@gmail.com',
                      style: TextStyle(
                        color: MainTheme[4],
                        fontSize: 15,
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,10,0,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0,0,0,0),
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                    color: MainTheme[4],
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                  'Good morning!',
                                  style: TextStyle(
                                    color: MainTheme[4],
                                    fontSize: 16,
                                  ),
                                ),

                            ],
                          ),
                        ),



                      ],
                    ),
                  ),


            // кнопки
                  InkWell(
                   onTap: () {SelectSmth(context, 0);},
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      //color: Colors.white,
                      child:Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                          children: [
                            Text(
                              'Настройки приложения',
                              style: TextStyle(
                                color: MainTheme[4],
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,0,15,0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: MainTheme[4],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {SelectSmth(context, 1);},
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      //color: Colors.white,
                      child:Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                          children: [
                            Text(
                              'О приложении',
                              style: TextStyle(
                                color: MainTheme[4],
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,0,15,0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: MainTheme[4],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),




          ],
        ),

        InkWell(
          onTap: () {SelectSmth(context, 2);},
          child: Flexible(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 55,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: MainTheme[1],
                ),
                child: Center(
                  child: Text(
                    'ВОЙТИ',
                    style: TextStyle(
                      fontSize: 25,
                      color: MainTheme[4],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )//Кнопка войти
      ],
    );




  }



}