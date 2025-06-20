import 'package:flutter/material.dart';
class proj extends StatelessWidget {
  const proj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/email.jpeg'),
        ),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),

          ),
        ],
      ),
      body: Column(
        children: [
          TextFormField(decoration: InputDecoration(
            hintText: 'Email',icon: Icon(Icons.email),
          ),),
          TextFormField(decoration: InputDecoration(
            hintText: 'Password',icon: Icon(Icons.password),
          ) ,),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.login)),
          SizedBox(height: 20,),
          Image.asset("assets/email.jpeg")
        ],
      ),
    );
  }
}
