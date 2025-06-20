import 'package:flutter/material.dart';

class calci extends StatefulWidget {
  const calci({super.key});

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {
  TextEditingController ctrl = TextEditingController();

  String val1 = "", val2 = "", optr = "";
  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
          backgroundColor: Colors.grey,
          title:Row(
            children: [
              Text("CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold),),
              const Icon(Icons.keyboard_arrow_down),
            ],
          ),
      ),
          body:  Column(
            children: [
            TextFormField(
            controller: ctrl,
            readOnly: true,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "1";
                    ctrl.text = val2;
                  } else {
                    val1 += "1";
                    ctrl.text = val1;
                  }
                }, child: Text("1")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "2";
                    ctrl.text = val2;
                  } else {
                    val1 += "2";
                    ctrl.text = val1;
                  }
                }, child: Text("2")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "3";
                    ctrl.text = val2;
                  } else {
                    val1 += "3";
                    ctrl.text = val1;
                  }
                }, child: Text("3")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  ctrl.text = "+";
                  optr += "+";
                  clk = true;
                }, child: Text("+")),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "4";
                    ctrl.text = val2;
                  } else {
                    val1 += "4";
                    ctrl.text = val1;
                  }
                }, child: Text("4")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "5";
                    ctrl.text = val2;
                  } else {
                    val1 += "5";
                    ctrl.text = val1;
                  }
                }, child: Text("5")),
              ),
              ElevatedButton(onPressed: () {
                if(clk) {
                  val2 += "6";
                  ctrl.text = val2;
                } else {
                  val1 += "6";
                  ctrl.text = val1;
                }
              }, child: Text("6")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  ctrl.text = "-";
                  optr += "-";
                  clk = true;
                }, child: Text("-")),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "7";
                    ctrl.text = val2;
                  } else {
                    val1 += "7";
                    ctrl.text = val1;
                  }
                }, child: Text("7")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "8";
                    ctrl.text = val2;
                  } else {
                    val1 += "8";
                    ctrl.text = val1;
                  }
                }, child: Text("8")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "9";
                    ctrl.text = val2;
                  } else {
                    val1 += "9";
                    ctrl.text = val1;
                  }
                }, child: Text("9")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  ctrl.text = "*";
                  optr += "*";
                  clk = true;
                }, child: Text("*")),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  if(clk) {
                    val2 += "0";
                    ctrl.text = val2;
                  } else {
                    val1 += "0";
                    ctrl.text = val1;
                  }
                }, child: Text("0")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  ctrl.text = "/";
                  optr += "/";
                  clk = true;
                }, child: Text("/")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  ctrl.text = "%";
                  optr = "%";
                  clk = true;
                }, child: Text("%")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: () {
                          if(clk) {
                            val2 += ".";
                            ctrl.text = val2;
                          } else {
                            val1 += ".";
                            ctrl.text = val1;
                          }
                        }, child: Text(".")),
                      ),

                    ],
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  double a = double.parse(val1);
                  double b = double.parse(val2);
                  double res = 0;

                  if(optr == "+") {
                    res = a + b;
                  }
                  if(optr == "-") {
                    res = a - b;
                  }
                  if(optr == "*") {
                    res = a * b;
                  }
                  if(optr == "/") {
                    if(b != 0) {
                      res = (a ~/ b) as double; // integer division
                    } else {
                      ctrl.text = "Err";
                      return;
                    }
                  }
                  if(optr == "%") {
                    if(b != 0) {
                      res = a % b;
                    } else {
                      ctrl.text = "Err";
                      return;
                    }
                  }

                  ctrl.text = res.toString();
                  clk = false;

                },
                    child: Text("=")

                ),
              ),
            ],
          ),
]
          )
      );


  }
}