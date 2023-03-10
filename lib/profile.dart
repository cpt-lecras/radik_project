import 'package:flutter/material.dart';

class Account extends StatefulWidget{
  const Account({super.key});

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          //tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Профиль'),
      ),
      body: const Center(
        child: Text('profile', style: TextStyle(color: Colors.white)),
      ),
    );

  }

}