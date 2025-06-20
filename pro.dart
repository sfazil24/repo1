import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Pro extends StatefulWidget {
  const Pro({super.key});

  @override
  State<Pro> createState() => _ProState();
}
TextEditingController _controller = TextEditingController();
class _ProState extends State<Pro> {

List xyz = [
  'assets/nhp.jpg',
  'assets/nova1.jpg',
  'assets/nova5.jpeg',
  'assets/nova2.png',
  'assets/nova3.jpg',



];


  final PageController Pageviewdot = PageController();
  int selectedPage  = 0;
  int _currenindex = 0;
  int _selectedQuantity = 1;

  get colors => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_outlined),
        backgroundColor: Colors.blueGrey,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search Amazon.in',
                  suffixIcon: Icon(Icons.search,color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 95,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Visit the store",style: TextStyle(
                            fontSize: 10,color: Colors.indigo,fontWeight: FontWeight.bold)
                          ,),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 10,
                          // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                          
                      ],
                    ),
                    Expanded(
                      child: Text("Nova BHP 8100 Silky Shine 1200 W Hot and Cold Foldable Hair Dryer (Black)",
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                      ),),
                  ],
                ),
              ),
            ),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 25/9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              //autoPlay: true,
              //autoPlayInterval: Duration(seconds: 3),
              //autoPlayAnimationDuration: Duration(milliseconds: 1000),
              //autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.8,
              scrollDirection: Axis.horizontal,
              onPageChanged:(index,reason){
                setState(() {
                  _currenindex = index;
                });
              },
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index, int realIndex)
            {
              return Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(xyz[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
            DotsIndicator(
              dotsCount: 5,
              position: _currenindex.toDouble(),
              decorator: DotsDecorator(
                size:  Size.square(9.0),
                activeSize:  Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text:
                TextSpan(text: '-48%  ',style: TextStyle(
                    color: Colors.red.shade500, fontSize: 18,fontWeight: FontWeight.normal),
                  children:[
                    WidgetSpan(child: Transform.translate(offset: Offset(0, -4),
                      child: Text("\u{20B9}",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                      ),)),
                    TextSpan(
                      text: "439", style: TextStyle(
                        color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'M.R.P:',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,fontWeight: FontWeight.w900
                        ),
                      ),
                      TextSpan(
                        text: '\u{20B9}',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,fontWeight: FontWeight.w900
                        ),
                      ),
                      TextSpan(
                        text: '845',
                        style: TextStyle(
                          color: Colors.black.withAlpha(500),
                          fontSize: 14,fontWeight: FontWeight.normal,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.black54,
                          decorationThickness: 3.0,
                        ),
                      ),
                    ]
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Quantity: ",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100, // Adjust width
                            height: 50,  // Adjust height
                            child:
                            DropdownButton<int>(
                              value: _selectedQuantity,
                              isExpanded: true,
                              items: [1, 2, 3, 4].map((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text("$value",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }).toList(),
                              onChanged: (int? newValue) {
                                if (newValue != null) {
                                  setState(() {
                                    _selectedQuantity = newValue;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child:  ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15)
                              ),
                              child: Text("Add to Cart",style: TextStyle(color: Colors.black,),
                              ),
                            ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                              ),
                              child: Text("Buy Now",style: TextStyle(color: Colors.black),
                              ),
                            ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

