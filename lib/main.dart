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
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}

class BottomNavigator extends StatelessWidget{
  const BottomNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.amberAccent,
        items: const <BottomNavigationBarItem> [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      )
    ],
    );
  }
}

