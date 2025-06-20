import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';


class com extends StatefulWidget {
  const com({super.key});

  @override
  State<com> createState() => _comState();
}


class _comState extends State<com> {
  List images=["https://in.images.search.yahoo.com/yhs/view;_ylt=AwrtgjyncT1oIck69CYO9olQ;_ylu=c2VjA3NyBHNsawNpbWcEb2lkA2EwNzc3YzEyNjExZDc0MTA3ZjM4MmExOTgyNzlhZmQwBGdwb3MDMQRpdANiaW5n?back=https%3A%2F%2Fin.images.search.yahoo.com%2Fyhs%2Fsearch%3Fp%3Dclothing%26ei%3DUTF-8%26type%3Dtype80160-1693933500%26fr%3Dyhs-sz-002%26hsimp%3Dyhs-002%26hspart%3Dsz%26param1%3D54667409%26tab%3Dorganic%26ri%3D1&w=2560&h=1580&imgurl=katiecouric.com%2Fwp-content%2Fuploads%2F2022%2F09%2Fbest_clothing_rental_options-scaled.jpeg&rurl=https%3A%2F%2Fkatiecouric.com%2Flifestyle%2Fstyle%2Fbest-clothing-rental-services%2F&size=140KB&p=clothing&oid=a0777c12611d74107f382a198279afd0&fr2=&fr=yhs-sz-002&tt=8+Best+Clothing+Rental+Services+-+Where+to+Rent+Clothes+%26+Accessories&b=0&ni=140&no=1&ts=&tab=organic&sigr=X2vx_3LxGmzb&sigb=Qt9WybKSWBWB&sigi=WTTccebc1DWx&sigt=4qtVCuT5y338&.crumb=DAQS5NflQO9&fr=yhs-sz-002&hsimp=yhs-002&hspart=sz&type=type80160-1693933500&param1=54667409","https://www.tastingtable.com/img/gallery/13-most-affordable-grocery-stores-in-2023/l-intro-1679073677.jpg","https://s3.amazonaws.com/images.ecwid.com/images/13261323/808798742.jpg",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 30,
          child: TextFormField(
            decoration:InputDecoration(
              hintText: 'Search Amazon.in',
              suffixIcon:  SizedBox(
                width: 60,
                child: Row(
                  children: [
                    Icon(Icons.search_outlined),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ],
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),

          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_on_outlined),
                  ),
                  Text('Delivering to Chennai - Update location',style: TextStyle(color: Colors.white),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_right,color: Colors.white,),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all()
              ),
            ),
            Container(
              height: 100,

              child: Container(decoration: BoxDecoration(color: Colors.white),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext c,index)
                    {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                border:Border.all(),
                                shape:BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage('assets/foot.jpeg'),
                                    fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Text("Bazzar"),

                          //Text(lis[index].text,style: TextStyle(color: Colors.white),),
                        ],

                      );
                    }
                ),
              ),),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16/9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 5000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 15,
              itemBuilder: (BuildContext context, int index,int realIndex)
              {
                return Container(
                  height: 200,
                  width: 370,
                  decoration: BoxDecoration(
                    border: Border.all(),
                      image: DecorationImage(image: AssetImage("assets/foot.jpeg"),
                        fit: BoxFit.fill,
                      )
                  ),
                );
              }, ),
            Container(
              height: 180,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext c,index)
                  {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 140,
                            width: 150,
                            //color: Colors.lime,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/foot.jpeg'),)
                            ),
                          ),
                        ),
                        Text("PRIME")
                      ],
                    );
                  }
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("DEALS FOR THE DAY"),
            ),
            Container(
              height: 400,
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext c,index)
                  {
                    return Container(

                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/foot.jpeg"),
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Text("Appliances")
                        ],
                      ),
                    );
                  }

              ),
            ),

          ],
        ),
      ),
    );
  }
}







