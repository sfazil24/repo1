import 'package:flutter/material.dart';

class Loginn extends StatelessWidget {
  const Loginn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.cyan,size: 35,),
        title: Text("ok",style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 35),),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter name",
                border: OutlineInputBorder(),
              ),
            ),
          ),


          ///
          Container(
            height: 200,
            width: 300,
           // color: Colors.cyan,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
             // borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage('assets/email.jpeg'),
                  fit: BoxFit.fill,
              ),
              shape: BoxShape.circle
            ),
            child: Center(child: Text("ok")),
          ),

        ],
      ),
    );
  }
}
