import 'package:fazil_project/screen/botnavi.dart';
import 'package:flutter/material.dart';
class me extends StatefulWidget {
  const me({super.key});

  @override
  State<me> createState() => _meState();
}

class _meState extends State<me> {

  final _key = GlobalKey<FormState>();
  
 bool _show = false;

 TextEditingController ctrl  =  TextEditingController ();
 TextEditingController ctrl1 =  TextEditingController ();
 TextEditingController ctrl2 =  TextEditingController ();
 TextEditingController ctrl3 =  TextEditingController ();

 a()
 {
   setState(() {
     ctrl.text.isNotEmpty &&  ctrl1.text.isNotEmpty &&  ctrl2.text.isNotEmpty &&  ctrl3.text.isNotEmpty ? _show =true : _show =false;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_outlined,color: Colors.white,size: 25,),
        title: Text("GlacierTechnology",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
      centerTitle: true,
        backgroundColor: Colors.black,

      ),
    body:
    Form(
      key: _key,
      child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Enter your name",
              border: OutlineInputBorder(),
            ),
            controller: ctrl,
            onChanged: (i){
             a();
            },
            validator: (input){
              if(input == null || input.isEmpty || input.length<3)
                {
                  return "Please enter your valid name";
                }
          },
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: "Enter your e-mail",
                border: OutlineInputBorder(),
              ),
              controller: ctrl1,
              onChanged: (i){
                a();
              },
              validator: (input){
                if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!))
                {
                  return "Please enter valid e-mail address";
                }
              },
            ),
          ),

              Padding(
              padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Enter your password",
                border: OutlineInputBorder(),
              ),
              controller: ctrl2,
              onChanged: (i){
                a();
              },
              validator: (input){
              if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(input!))
              {
                return "Please Enter Valid Password";
              }
             },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.numbers_outlined),
              hintText: "Enter your mobile number",
              border: OutlineInputBorder(),
              ),
              controller: ctrl3,
              onChanged: (i){
                a();
              },
              validator: (input){
             if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!))
             {
             return "Please enter mobile number";
               }
             },
            ),
          ),
          Visibility(
            visible: _show,
            child: ElevatedButton(
                onPressed: (){
                 if(_key.currentState!.validate()){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const Botnavi()),
                   );
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully logged in")));
                 }
                }, child: Icon(Icons.login)
            ),
          ),
        ],
      ),
    ),
    );
  }
}
