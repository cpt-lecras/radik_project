import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';

class MyInputButton extends StatelessWidget{
  final Function()? onTap;
  const MyInputButton({
    super.key,
    required this.onTap,

  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Flexible(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 55,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: MainTheme[1],
            ),
            child: Center(
              child: Text(
                'ВОЙТИ',
                style: TextStyle(
                  fontSize: 25,
                  color: MainTheme[4],
                ),
              ),
            ),
          ),
        ),
      ),
    );

  }

}