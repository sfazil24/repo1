import 'package:flutter/material.dart';
class Gt extends StatelessWidget {
  const Gt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 200,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/email.jpeg'),
                fit: BoxFit.fill ),
            shape: BoxShape.rectangle
          ),

        ),
        title: Text('GT SOFTWARE',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/email.jpeg'),
              fit: BoxFit.fill),
              border: Border.all(),
              borderRadius: BorderRadius.circular(35)


            ),
            child: Center(child: Text('Hello')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Enter Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.login)),



      ],
      ),


    );
  }
}
