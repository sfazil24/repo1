import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  var user = FirebaseAuth.instance.currentUser;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home"),),
      body: Column(
        children: [
          Text(user!.email.toString()),
        ],
      ),
    );
  }
}
