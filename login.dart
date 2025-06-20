
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Signup.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(child:
        Text("Login",style: TextStyle(color: Colors.white),))
          ,),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(controller: email,
            decoration: InputDecoration(
              hintText: "Email",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(controller: password,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
            ),
            ),
          ),
          OutlinedButton(onPressed: (){

            Loginn();

          }, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Login",style: TextStyle(),),
          )),
          OutlinedButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));

          }, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("SignIn"),
          )),
        ],
      ),
    );
  }
}
