import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Account extends StatefulWidget{
  const Account({super.key});

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account>{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 165.0),
              child: GNav(
                iconSize: 30.0,
                color: Colors.black,
                activeColor: Colors.white70,
                tabBackgroundColor: Colors.black12,
                tabBorderRadius: 15,
                gap: 15,
                padding: EdgeInsets.all(15),
                tabs: [
                  GButton(
                    icon: Icons.person,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

  }

}