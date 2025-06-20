import 'package:flutter/material.dart';
class listMin extends StatefulWidget {
  const listMin({super.key});
  @override
  State<listMin> createState() => _listMinState();
}
class _listMinState extends State<listMin> {



  List item=[];

  void additems()
  {
    setState(() {
      item.add(ctrl1.text);
    });
  }

  TextEditingController ctrl1=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctrl1,
            ),
          ),
          ElevatedButton(onPressed: ()
          {
            additems();
          }, child: Text("Enter")),


          Container(
            height: 500,
            child: ListView.builder(
              itemCount: item.length,
              itemBuilder: (BuildContext,index)
              {
                return Container(
                  height: 40,
                  width: 300,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Text(item[index]),
                    ],
                  ),
                );
              },),
          )
        ],
      ),

    );
  }
}