import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:radik_project/firebase_options.dart';

void main() async {

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const HomePage()
    );
  }
}






