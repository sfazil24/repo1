import 'package:authentication/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  Future<void> Loginn() async{

    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text);


    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: [
        TextFormField(controller: email,),
        TextFormField(controller: password,),
        OutlinedButton(onPressed: (){

          Loginn();

        }, child: Text("Login")),
          OutlinedButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));

          }, child: Text("Signup")),
      ],
      ),
    );
  }
}
