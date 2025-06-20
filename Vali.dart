import 'package:flutter/material.dart';

import 'hello.dart';
class Vali extends StatefulWidget {
  const Vali({super.key});

  @override
  State<Vali> createState() => _ValiState();
}

class _ValiState extends State<Vali> {
  
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Form(
          key: _key,
          child: SingleChildScrollView( 
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                        hintText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (input){
                    if(input == null || input.isEmpty || input.length<3)
                      {
                        return "Please Enter Your Valid Name";
                      }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Enter your e-mail',
                    border: OutlineInputBorder(),
                  ),
                  validator: (input){
                    if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!))
                    {
                      return "Please Enter valid e-mail Address";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (input){
                    if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(input!))
                    {
                      return "Please Enter Valid Password";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.numbers_outlined),
                    hintText: 'Enter your Mobile Number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (input){
                    if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!))
                      {
                        return "Please Enter Mobile Number";
                      }
                  },
                ),
                OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const hello()),
                      );
                      // if(_key.currentState!.validate())
                      //   {
                      //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully Logged in")));
                      //   }
                    },child: Text("Login")),
            
            
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.cyan,
                )
              ],
            ),
          )),
    );
  }
}
