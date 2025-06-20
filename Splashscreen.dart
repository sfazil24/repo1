import 'package:email/Homepage.dart';
import 'package:email/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

var user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      if(user == null)
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
        }else
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
          }
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Splashscreen")
        ],
      ),
    );
  }
}
