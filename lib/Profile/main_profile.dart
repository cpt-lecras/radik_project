import 'package:flutter/material.dart';
import 'package:radik_project/components/Input_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radik_project/Profile/About.dart';
import 'package:radik_project/Profile/settings.dart';
import 'package:radik_project/Profile/Login.dart';
import 'package:radik_project/Theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:radik_project/components/Out_Button.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account> {
  int item = 0;



  void SelectSmth(BuildContext context, int item) {
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
            MaterialPageRoute(builder: (context) => Login()),
          );
          break;
        }
    }
  }

  void signUserOut() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: GFAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://www.adobe.com/express/create/media_127a4cd0c28c2753638768caf8967503d38d01e4c.jpeg?width=400&format=jpeg&optimize=medium'),
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
            StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {

                //user logged in
                if (snapshot.hasData) {
                  final user = FirebaseAuth.instance.currentUser!;
                  return Text(
                    user.email!,
                    style: TextStyle(
                      color: MainTheme[4],
                      fontSize: 15,
                    ),
                  );
                }
                //user is NOT logged in
                else {
                  return Text(
                    'email@gmail.com',
                    style: TextStyle(
                      color: MainTheme[4],
                      fontSize: 15,
                    ),
                  );
                }
              },
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
              onTap: () {
                SelectSmth(context, 0);
              },
              child: Container(
                height: 65,
                width: double.infinity,
                //color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Настройки приложения',
                        style: TextStyle(
                          color: MainTheme[4],
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
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
              onTap: () {
                SelectSmth(context, 1);
              },
              child: Container(
                height: 65,
                width: double.infinity,
                //color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'О приложении',
                        style: TextStyle(
                          color: MainTheme[4],
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
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

        //Кнопка войти

        StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user logged in
            if (snapshot.hasData) {
              return MyOutButton(
                onTap: () {
                  signUserOut();
                },
              );
            }
            //user is NOT logged in
            else {
              return MyInputButton(
                onTap: () {
                  SelectSmth(context, 2);
                },
              );
            }
          },
        ),
      ],
    );
  }
}
