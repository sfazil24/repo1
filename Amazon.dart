import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Amazon extends StatelessWidget {
  const Amazon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: SingleChildScrollView(
       child: Column(
         children: [

           Container(
             height: 400,
             child: GridView.builder(
                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                     maxCrossAxisExtent: 200,
                     childAspectRatio: 3 / 2,
                     crossAxisSpacing: 30,
                     mainAxisSpacing: 5),
                 itemCount: 4,
                 itemBuilder: (BuildContext context,int pageViewIndex) {
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 100,
                       width: 150,
                       color: Colors.cyan,
                       child: Text("data"),
                     ),
                   );
                 }
             ),
           ),
       
       
           Container(
             height: 200,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
                 itemCount: 15,
                 itemBuilder: (BuildContext context,int pageViewIndex) {
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 100,
                       width: 150,
                       color: Colors.cyan,
                       child: Text("data"),
                     ),
                   );
                 }
             ),
           ),
       
       
       
       
           CarouselSlider.builder(
             options: CarouselOptions(
               height: 200,
               aspectRatio: 16/9,
               viewportFraction: 0.8,
               initialPage: 0,
               enableInfiniteScroll: true,
               reverse: false,
               autoPlay: true,
               autoPlayInterval: Duration(seconds: 3),
               autoPlayAnimationDuration: Duration(milliseconds: 800),
               autoPlayCurve: Curves.fastOutSlowIn,
               enlargeCenterPage: true,
               enlargeFactor: 0.3,
               //onPageChanged: callbackFunction,
               scrollDirection: Axis.horizontal,
             ),
               itemCount: 15,
               itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                 return Container(
                   height: 300,
                   width: 300,
                   color: Colors.cyan,
                   child: Text(itemIndex.toString()),
                 );
               }
             )
         ],
       ),
     ),
    );
  }
}


