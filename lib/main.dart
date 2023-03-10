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

  int selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(color: Colors.white);
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
        backgroundColor: Colors.amberAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper, color: Colors.black),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule, color: Colors.black),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.black),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}



