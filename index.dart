import 'package:flutter/material.dart';

class qwe extends StatefulWidget {

  String a;

  qwe({super.key, required this.a});

  @override
  State<qwe> createState() => _qweState();
}

class _qweState extends State<qwe> {

  TextEditingController ctr=TextEditingController();
  TextEditingController ctr2=TextEditingController();
  TextEditingController ctr3=TextEditingController();
  TextEditingController ctr4=TextEditingController();


  @override
  void initState() {
    List item=widget.a.split("\n");

    ctr=TextEditingController(text: item[0]);
    ctr2=TextEditingController(text: item[1]);
    ctr3=TextEditingController(text: item[2]);
    ctr4=TextEditingController(text: item[3]);
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Number",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "email",
              ),
            ),
          ),
          TextFormField(
            controller: ctr4,
            decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder()
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()
            {
              String edit="${ctr.text}\n${ctr2.text}\n${ctr3.text}\n${ctr4.text}";
              Navigator.pop(context,edit);
            }, child: Text("Update")),
          ),
        ],
      ),
    );
  }
}