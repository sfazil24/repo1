import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Homepage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

   Future<void> create() async{

     await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email.text,
         password: password.text);


     Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
   }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup"),),
      body: Column(
        children: [
          TextFormField(controller: email,),
          TextFormField(controller: password,),
          OutlinedButton(onPressed: (){
            create();
          }, child: Text("Signup")),

        ],
      ),
    );
  }
}
