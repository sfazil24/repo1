import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Resp extends StatefulWidget {
  const Resp({super.key});

  @override
  State<Resp> createState() => _RespState();
}

class _RespState extends State<Resp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width /2.5,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height /2,
                  width: MediaQuery.of(context).size.width /2.5,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}