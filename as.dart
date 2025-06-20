import 'package:flutter/material.dart';
class ccc extends StatefulWidget {
  const ccc({super.key});

  @override
  State<ccc> createState() => _cccState();
}

class _cccState extends State<ccc> {

  TextEditingController ctrl = TextEditingController();
  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2= TextEditingController();
  TextEditingController ctrl3 = TextEditingController();
  TextEditingController ctrl4 = TextEditingController();

  List a = [];
  void add()
  {
   String b =ctrl.text;
   String c =ctrl1.text;
   String d =ctrl2.text;
   String e =ctrl3.text;
   String f =ctrl4.text;
   a.add('$b\n$c\n$d\n$e\n$f');
   setState(() {
     
   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: ctrl,),
          TextFormField(controller: ctrl1,),
          TextFormField(controller: ctrl2,),
          TextFormField(controller: ctrl3,),
          TextFormField(controller: ctrl4,),
          ElevatedButton(onPressed: (){
           setState(() {
             a.add(ctrl.text);
           });
          }, child: Icon(Icons.login)),


          Container(
            height: 400,
            child: ListView.builder(
                itemCount: a.length,
                itemBuilder: (BuildContext c ,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sec(data: a[index],)));
                  },
                  child: Container(
                      height: 40,
                      color: Colors.cyan,
                      child: Row(
                        children: [
                          Text(a[index]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: ()
                                {
                                 setState(() {
                                   a.removeAt(index);
                                 });
                                },
                                child: Icon(Icons.delete)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: ()
                                {

                                  showDialog(context: (context), builder: (BuildContext)
                                  {
                                    return AlertDialog(
                                      title: TextFormField(controller: ctrl1,),
                                      actions: [
                                        ElevatedButton(onPressed: ()
                                            {
                                              setState(() {
                                                a[index] = ctrl1.text;
                                                Navigator.pop(context);
                                              });

                                            }, child: Text("update"))
                                      ],
                                    );
                                  });

                                },
                                child: Icon(Icons.edit)),
                          ),

                        ],
                      )),
                ),
              );
            }),
          ),



        ],
      ),
    );
  }
}

class Sec extends StatefulWidget {
  String data;
  Sec({super.key,required this.data});

  @override
  State<Sec> createState() => _SecState();
}

class _SecState extends State<Sec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.data),
        ],
      ),
    );
  }
}
