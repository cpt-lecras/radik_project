import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text('RGRTU-assistent'),
      ),
      body: Container(
        child: Center(
          child: const Text('[место для расписания]', style: TextStyle(color: Colors.white),),
        )
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class BottomNavigator extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, semanticLabel: "Home"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, semanticLabel: "Search"),
      ),
    ]);
  }
}