import 'package:flutter/material.dart';

import 'bca.dart';
import 'lsting.dart';


class listmin extends StatefulWidget {
  const listmin({super.key});
  @override
  State<listmin> createState() => _listminState();
}
class _listminState extends State<listmin> {

  TextEditingController ctrl1=TextEditingController();
  TextEditingController ctrl2=TextEditingController();
  TextEditingController ctrl3=TextEditingController();
  TextEditingController ctrl4=TextEditingController();
  TextEditingController ctr1=TextEditingController();
  String a="";
  String b="";
  String c="";
  String d="";


  List item=[];

  void additems()
  {
    setState(() {
      a=ctrl1.text;
      b=ctrl1.text;
      c=ctrl1.text;
      d=ctrl1.text;

      item.add("$a\n$b\n$c\n$d");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
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
                return GestureDetector(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>lisby(a1: item[index],)),
                  ).
                  then((edit)
                  {
                    setState(() {
                      item[item.indexWhere((element)=>element==data)]=edit;
                    });
                  });
                },
                  child: Container(
                    height: 130,
                    width: 300,
                    color: Colors.white10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(item[index]),
                        IconButton(
                            onPressed: ()
                            {
                              showDialog(context: (context), builder: (BuildContext)
                              {
                                return AlertDialog(
                                  title: TextFormField(controller: ctr1,),
                                  actions: [
                                    ElevatedButton(onPressed: ()
                                    {
                                      setState(() {
                                        item[index]=ctr1.text;
                                        Navigator.pop(context);
                                      });
                                    }, child: Text("Update"))
                                  ],

                                );
                              });
                            },
                            icon: Icon(Icons.add),
                        ),
                        IconButton(onPressed: ()
                        {
                          setState(() {
                            item.removeAt(index);
                          });
                        }, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );


              },),
          )
        ],
      ),

    );
  }
}