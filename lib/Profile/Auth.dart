/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget{
  Auth({super.key});
  bool SuccessAuth=false;

  bool GetAuthInfo(){
    return SuccessAuth;
  }
  @override
  Widget build(BuildContext context){
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder:  (context, snapshot) {
//user logged in
        if (snapshot.hasData){
          return Out_Button();
        }

//user is NOT logged in
        else {SuccessAuth=false;}

        },
      );
  }
}*/