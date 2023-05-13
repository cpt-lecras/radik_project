import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';
import 'package:radik_project/components/my_textfield.dart';
import 'package:radik_project/components/my_button.dart';
import 'package:radik_project/components/SquareTile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';





class Login extends StatefulWidget{

  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
//sign user in method

  bool SuccessAuth=false;

  void signUserIn (){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme[0],

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
//Text вход
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context, false),
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        //color: Colors.deepPurple,
                        child: Icon(
                          Icons.arrow_back,
                          color: MainTheme[3],
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Вход / Регистрация',
                    style: TextStyle(
                      color: MainTheme[3],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('')
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                      Column(
                        children: [
                          SizedBox(height: 50,),
// Icon
                          Icon(
                            Icons.lock,
                            size: 100,
                          ),
                          SizedBox(height: 50,),
//Text
                          Text(
                            'Привет!',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),

                          ),
                          SizedBox(height: 20,),
//Text Field user
                          MyTextField(
                            controller: usernameController,
                            hintText: 'Username',
                            obsecureText: false,

                          ),

                          SizedBox(height: 25,),
//Text Field Password
                          MyTextField(
                            controller: passwordController,
                            hintText: 'Password',
                            obsecureText: true,
                          ),
                          SizedBox(height: 10,),
//forgot password
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                  'Забыли пароль?',
                                style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
//sign button
                          SizedBox(height: 25,),
                          MyButton(
                            onTap: signUserIn,
                          ),
//or continue with
                          SizedBox(height: 25,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    'Продолжить через',
                                    style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),
                                  ),
                                ),

                                Expanded(
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.grey.shade400,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
//google + apple sign in buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //google button
                            SquareTile(imagePath: 'assets/images/google.png'),

                            SizedBox(width: 35,),

                            //apple button
                            SquareTile(imagePath: 'assets/images/apple.png'),
                          ],
                        ),
                          SizedBox(height: 20,),
//not a member
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ещё не зарегистрированы?',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 2,),
                              Text(
                                'Зарегистрироваться сейчас',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),


                            ],
                          ),




                        ],
                      ),




              ],

            ),
          ],
        ),
      ),
    );
  }
}