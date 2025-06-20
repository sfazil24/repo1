import 'package:flutter/material.dart';
class hello extends StatelessWidget {
  const hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/email.jpeg'))
            ),
          ),
          Column(
            children: [Container( height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/email.jpeg'))
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

