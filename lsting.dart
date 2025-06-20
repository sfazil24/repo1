import 'package:flutter/material.dart';
class lisby extends StatefulWidget {

  String a1;
  lisby({super.key, required this.a1});

  @override
  State<lisby> createState() => _lisbyState();
}

class _lisbyState extends State<lisby> {
  TextEditingController ctrl1=TextEditingController();
  TextEditingController ctrl2=TextEditingController();
  TextEditingController ctrl3=TextEditingController();
  TextEditingController ctrl4=TextEditingController();


  List item=[];

  @override
  void initState() {
    List item=widget.a1.split("\n");

    setState(() {
      ctrl1=TextEditingController(text: item[0]);
      ctrl2=TextEditingController(text: item[1]);
      ctrl3=TextEditingController(text: item[2]);
      ctrl4=TextEditingController(text: item[3]);
      super.initState();

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Updating the Element"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: ctrl1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: ctrl2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: ctrl3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: ctrl4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: ()
          {
            String edit="${ctrl1.text}\n${ctrl2.text}\n${ctrl3.text}\n${ctrl4.text}";
            Navigator.pop(context,edit);
          }, child: Text("Update")),
        ),

      ],),
    );
  }
}