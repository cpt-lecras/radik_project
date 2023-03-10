import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'map.dart';
import 'news.dart';
import 'profile.dart';
import 'schedule.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();

}


class _HomePage extends State<HomePage> {

  int selectedIndex = 1;
  static const List<Widget> widgetOptions = <Widget>[
    News(),
    Schedule(),
    Map(),
    Account(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar:Container(
        color: Colors.amberAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
          child: GNav(
            backgroundColor: Colors.amberAccent,
            iconSize: 28.0,
            color: Colors.black,
            activeColor: Colors.amberAccent,
            tabBackgroundColor:Colors.black ,
            padding: EdgeInsets.all(10),
            gap: 12,
            onTabChange: (selectedIndex){
              onItemTapped(selectedIndex);
            },
            tabs: const [
              GButton(
                  icon: Icons.newspaper,
                  text: 'News',
              ),
              GButton(
                  icon: Icons.today_outlined,
                  text:'Schedule',
              ),
              GButton(
                  icon: Icons.map,
                  text:'Map',
              ),
              GButton(
                  icon: Icons.person,
                  text:'Account',
              ),
            ],
          ),
        ),
      )
    );
  }
}



