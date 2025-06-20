import 'package:flutter/material.dart';
class Hi extends StatelessWidget {
  const Hi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 200,
              child: Image(image: AssetImage('assets/kk.png')),
              ),
              SizedBox(
                height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Column(
                       children: [
                         Text(
                           'Login',
                           style: TextStyle(
                             fontSize: 28,
                             fontWeight: FontWeight.bold,
                             color: Colors.black87,
                           ),
                         ),
                         SizedBox(height: 5,),
                         Text(
                           'Login and start learning now',
                           style: TextStyle(color: Colors.grey[600]),
                         ),
                       ],
                     ),

                   ),
                   SizedBox(height: 20,),
                   TextField(
                     decoration: InputDecoration(
                       labelText: 'Email',
                       border: OutlineInputBorder(),
                     ),
                   ),

                   SizedBox(height: 16,),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       labelText: 'Password',
                       border: OutlineInputBorder(),
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerRight,
                     child: TextButton(
                         onPressed: (){},
                         child: Text('Forgot Password'),
                     ),
                   ),
                   SizedBox(height: 10,),
                   SizedBox(
                     width: double.infinity,
                     child: ElevatedButton(onPressed: (){},
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.blue[800],
                           padding: EdgeInsets.symmetric(vertical: 14),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(8),
                           ),
                         ),
                     child: Text(
                       'Login',
                       style: TextStyle(fontSize: 16),

                     ),
                     ),
                   ),
                   SizedBox(height: 10,),
                   Center(
                     child: Text(
                       'By logging in, you agree to our terms & conditions.',
                       textAlign: TextAlign.center,
                       style: TextStyle(fontSize: 12,color: Colors.grey[600]),

                     ),
                   )
                 ],
               ),
              )
            ],
          ),
        ),
      )
    );
  }
}
