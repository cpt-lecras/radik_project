import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text('RGRTU-assistent'),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
        //child: Text('[место для расписания]', style: TextStyle(color: Colors.white),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        unselectedItemColor: Colors.amberAccent,
        selectedItemColor: Colors.black,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper, color: Colors.black),
            label: 'News',
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule, color: Colors.black),
            label: 'Schedule',
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.black),
            label: 'Map',
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Account',
            backgroundColor: Colors.amberAccent,
          ),
        ],

      ),
    );
  }
}



