import 'package:flutter/material.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text('RGRTU-assistent'),
      ),
      body: const Center(
        child: Text('[место для расписания]', style: TextStyle(color: Colors.white),),
      ),
      bottomNavigationBar: const Bottom(),
    );
  }
}

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => BottomNavigator();
}

class BottomNavigator extends State<Bottom> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //selectedIconTheme: const IconThemeData(color: Colors.black),
      //unselectedIconTheme: const IconThemeData(color: Colors.black),
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
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
        )
      ],
    );
  }
}


