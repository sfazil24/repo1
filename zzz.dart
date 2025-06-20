import 'package:flutter/material.dart';
class zzz extends StatelessWidget {
  const zzz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/email.jpeg'),
          fit: BoxFit.fill)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/Soccer.jpg'))
                ),
                ),
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all()
                ),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/Soccer.jpg'),
                    fit: BoxFit.fill)
                  ),
                ),
              )
            ],
          ),

            ),
          ),
        );
    
    
  }
}
