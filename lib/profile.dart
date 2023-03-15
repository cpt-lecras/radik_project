import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:getwidget/getwidget.dart';

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
        Container(
          //color: Colors.lightBlue,
          child:(
          Column(
            children: [
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
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'email@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          )
          ),

        ),


      ],
    );

  }

}