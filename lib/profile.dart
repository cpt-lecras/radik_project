import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget{
  const Account({super.key});

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account>{
  @override
  Widget build(BuildContext context){
    return Column(
      children:  [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: GFAvatar(
                  radius: 70,
                  backgroundImage:NetworkImage('https://www.adobe.com/express/create/media_127a4cd0c28c2753638768caf8967503d38d01e4c.jpeg?width=400&format=jpeg&optimize=medium'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Name Surname',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
               Text(
                  'email@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),

              Padding(
                padding: EdgeInsets.fromLTRB(0,10,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,0,0),
                          child: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Text(
                            'Good morning!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),

                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(0,0,20,0),

                      child: Icon(
                        Icons.settings,
                        color: Colors.grey,
                        size: 45,
                      ),
                    ),

                  ],
                ),
              ),
            ],
          )



      ],
    );

  }

}