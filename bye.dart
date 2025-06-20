import 'package:flutter/material.dart';
class bye extends StatelessWidget {
  const bye({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/email.jpeg'),
                    fit: BoxFit.fill),
                shape: BoxShape.circle
            ),
          ),
        ),
        // title: Center(child: Image(image: AssetImage('assets/email.jpeg')))
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/email.jpeg'),
                        fit: BoxFit.fill  )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 180,
                        width: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/email.jpeg'))
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 180,
                        width: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/email.jpeg'))
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/email.jpeg'))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/email.jpeg'))
                      ),
                    ),
                  )
                ],
              ),


            ],

          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/email.jpeg'),
                    fit: BoxFit.fill)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 190,
                            width: 350,
                            decoration: BoxDecoration(
                              image: DecorationImage
                                (image: AssetImage('assets/email.jpeg'),
                              fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 190,
                            width: 350,
                            decoration: BoxDecoration(
                                image: DecorationImage
                                  (image: AssetImage('assets/email.jpeg'),
                                    fit: BoxFit.fill)
                            ),
                          )
                        ],

                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),



        ],
      ),
    );
  }
}



