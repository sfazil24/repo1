import 'package:flutter/material.dart';


class Valid extends StatefulWidget {
  const Valid({super.key});

  @override
  State<Valid> createState() => _ValidState();
}

class _ValidState extends State<Valid> {

  final  _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Validation"),),
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
            validator: (input){
              if(input == null || input.isEmpty || input.length<3 )
                {
                  return "please enter the valid name";
                }
            },
            ),
            TextFormField(
              validator: (input)
              {
                if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!))
                  {
                    return "pls type valid email";
                  }
                return null;
              },
            ),
            TextFormField(
              validator: (input)
              {
                if(input == null || input.isEmpty || input.length>10 )
                  {
                    return "Please enter a valid mobile number";
                  }
              },
            ),
            OutlinedButton(
                onPressed: (){
              if(_key.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")));
                }
            }, child: Text("login"))
          ],
        ),
      ),
    ); 
  }
}



