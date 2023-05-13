import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';
import 'package:radik_project/components/my_textfield.dart';
import 'package:radik_project/components/my_button.dart';
import 'package:radik_project/components/SquareTile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:radik_project/Profile/Register.dart';




class Register extends StatefulWidget{


  const Register({super.key});

  @override
  State<Register> createState() => _Register();
}



class _Register extends State<Register> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
//sign user in method

  bool SuccessAuth=false;
  late User user;

  void signUserUp () async {

//loading
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );

//try create a user
    try {
      if (passwordController.text==confirmPasswordController.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      }
      else{
        //show error
        showErrorMessage('Пароли не совпадают');
      }

      Navigator.pop(context, false);
      Navigator.pop(context, false);
      Navigator.pop(context, false);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context, false);
      //smt wrong
      showErrorMessage(e.code);

    }

    //final user = FirebaseAuth.instance.currentUser!;
    //SetUser(user);



    //Navigator.pop(context, false);


  }

  void showErrorMessage(String message){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Colors.indigoAccent,
          title: Center(
              child: Text(
                message,
              )
          ),
        );
      },
    );
  }


  /*void SetUser(User user){
    this.user=user;
  }
  User GetUser(){
    return user;
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme[0],

      body: SafeArea(
        child: SingleChildScrollView(
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
                      'Регистрация',
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
                      SizedBox(height: 40,),
// Icon
                      Icon(
                        Icons.lock,
                        size: 100,
                      ),
                      SizedBox(height: 40,),
//Text
                      Text(
                        'Зарегистрируйся сейчас!',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),

                      ),
                      SizedBox(height: 20,),
//Text Field user
                      MyTextField(
                        controller: emailController,
                        hintText: 'E-Mail',
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
//confirm Field Password
                      MyTextField(
                        controller: confirmPasswordController,
                        hintText: 'Password Again',
                        obsecureText: true,
                      ),
                      SizedBox(height: 10,),

//sign button
                      SizedBox(height: 25,),
                      MyButton(
                        onTap: signUserUp,
                        text: 'Зарегистрироваться',
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
                            'Уже есть аккаунт?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(height: 2,),
//registre now
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context, false);
                            },
                            child: Text(
                              'Войти сейчас',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
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
      ),
    );
  }
}