import 'package:flutter/material.dart';
class am extends StatelessWidget {
  const am({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                fit: BoxFit.fill)
        ),
        child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/email.jpeg'))
                ),
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
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/email.jpeg'),
                  fit: BoxFit.fill),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: "Enter Your'e E-mail",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('login'))
                  ],
                ),
                
              ),

      ]

    ),
      ),
    );
    }
    }














