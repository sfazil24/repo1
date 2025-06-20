import 'package:flutter/material.dart';
class to1 extends StatelessWidget {
  const to1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_outlined,color: Colors.white,size: 25,),
        title: Text("Topic1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 170,
                  //color: Colors.black,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                    fit: BoxFit.fill)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 170,
                  //color: Colors.black,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                    fit: BoxFit.fill)
                  ),
                ),
              ),



            ],
          ),
          Container(
            child:
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                        fit: BoxFit.fill)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                                fit: BoxFit.fill)
                        ),
                      )
                    ],
                  ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
