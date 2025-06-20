import 'package:flutter/material.dart';



import 'index.dart';

class Liss extends StatefulWidget {
  const Liss({super.key});

  @override
  State<Liss> createState() => _LissState();
}

class _LissState extends State<Liss> {

  List items=[];

  void additem()
  {
    String a=ctr3.text;
    String b=ctr4.text;
    String c=ctr5.text;
    String d=ctr.text;

    items.add("$a\n$b\n$c\n$d");
    setState(() {

    });
  }

  route(String data)
  {
    setState(() {

    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>qwe(a: data))).
    then((edit)
    {
      setState(() {
        items[items.indexWhere((element)=>element==data)]=edit;
      });

    });
  }

  TextEditingController ctr=TextEditingController();
  TextEditingController ctr2=TextEditingController();
  TextEditingController ctr3=TextEditingController();
  TextEditingController ctr4=TextEditingController();
  TextEditingController ctr5=TextEditingController();


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

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr3,
              decoration: InputDecoration(

                  border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr4,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr5,
              decoration: InputDecoration(

                  border: OutlineInputBorder(),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              additem();
            }, child: Text("OK")),
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext ,index)
                {
                  return GestureDetector(
                    onTap: ()
                    {
                      route(items[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.cyanAccent,
                            ),child: Row(
                            children: [
                              Text(items[index]),
                              IconButton(
                                  onPressed: ()
                                  {
                                    showDialog(context: (context), builder: (BuildContext)
                                    {
                                      return AlertDialog(
                                        title: TextFormField(controller: ctr2,),
                                        actions: [
                                          ElevatedButton(onPressed: ()
                                          {
                                            setState(() {
                                              items[index]=ctr2.text;
                                              Navigator.pop(context);
                                            });
                                          }, child: Text("Update"))
                                        ],

                                      );
                                    });
                                  },
                                  icon: Icon(Icons.add)),
                              IconButton(onPressed: ()
                              {
                                setState(() {
                                  items.removeAt(index);
                                });
                              }, icon: Icon(Icons.delete)),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}