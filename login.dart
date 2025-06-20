import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        leading: Icon(Icons.add),
        actions: [

          Icon(Icons.camera),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),

        ],

      ),
       body: Column(
         children: [
           TextFormField(),
           TextFormField(),
           SizedBox(height: 20,),
           ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
           SizedBox(height: 20,),
           Image.asset("assets/email.jpeg")
         ],
       ),
    );

  }
}

