import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Map/map.dart';
import 'News/news.dart';
import 'Profile/main_profile.dart';
import 'Shedule/main_schedule.dart';
import 'Theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  //Theme

  //Theme



  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    News(),
    Schedule(),
    Map(),
    Account(),
  ];
  static const List<Text> TextOp = <Text>[
    Text('Новости', style: TextStyle(fontSize: 25)),
    Text('Расписание', style: TextStyle(fontSize: 25)),
    Text('Карта', style: TextStyle(fontSize: 25)),
    Text('Аккаунт', style: TextStyle(fontSize: 25))
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  //background color
  //app bar color + lable
  //bottom bar color (container + background) + icon(Color)+ active color + обводка

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar

        /*appBar: AppBar(
          title: TextOp.elementAt(selectedIndex),
        ),*/
        backgroundColor: MainTheme[0],

        body: SafeArea(
          child: Center(
            child: widgetOptions.elementAt(selectedIndex),
          ),
        ),
        bottomNavigationBar: Container(
          color: MainTheme[0],
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15.0, vertical: 10.0),
            child: GNav(
              iconSize: 28.0,
              backgroundColor: MainTheme[0],
              color: MainTheme[4],
              activeColor: MainTheme[0],
              tabBackgroundColor: MainTheme[4],
              padding: const EdgeInsets.all(10),
              gap: 10,
              onTabChange: (selectedIndex) {
                onItemTapped(selectedIndex);
              },
              tabs: const [
                GButton(
                  icon: Icons.newspaper,
                  text: 'News',
                ),
                GButton(
                  icon: Icons.today_outlined,
                  text: 'Schedule',
                ),
                GButton(
                  icon: Icons.map,
                  text: 'Map',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Account',
                ),
              ],
            ),
          ),
        )
    );
  }
}