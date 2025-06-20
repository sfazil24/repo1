import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("hello")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
          SizedBox(height: 50,),
          Image.asset("assets/email.jpeg"),
        ],
      ),
    );
  }
}
