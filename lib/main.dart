import 'package:flutter/material.dart';
export 'map.dart';
import 'map.dart';

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
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Home',
      style: optionStyle,
    ),
    Map(),
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
            icon: Icon(Icons.search, color: Colors.black),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.black),
            label: 'Map',
          ),
        ],
      ),
    );
  }
}



