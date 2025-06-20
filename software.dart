import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
class Software extends StatelessWidget {
  const Software({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/email.jpeg'),
                  fit: BoxFit.fill),
              shape: BoxShape.rectangle
          ),

        ),
        title: Center(child: Icon(Icons.home)) ,
        actions: [
          Text("GT SOFTWARE"),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/email.jpeg'),
                    fit: BoxFit.fill),
                border: Border.all(),
                borderRadius: BorderRadius.circular(35)


            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 16),
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
          ),



        ],
      ),


    );
  }
}

