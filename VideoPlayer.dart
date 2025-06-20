import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4"),
        ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("MX PLAYER"),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.cast),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              child: FlickVideoPlayer(
                flickManager: flickManager,
                flickVideoWithControls: FlickVideoWithControls(
                  closedCaptionTextStyle: TextStyle(fontSize: 8),
                  controls: FlickPortraitControls(),),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Stolen",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag,color: Colors.black,),
                  Text("Prime membership")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: (){}, child: Text("Watch with Prime",style: TextStyle(color: Colors.black),)),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context,int index)
                  {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.add,size: 50,),
                              Center(child: Text("My List"))
                            ],
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.thumb_up_alt_outlined,size: 40,),
                              Text("Rate")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.download,size: 40,),
                              Text("Download")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.share,size: 40,),
                              Text("Share")
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("At a railway station in rural India, Gautam picks up his brother Raman for a lavish wedding.But their plans are derailed when they encounter Jhumpa, a desperate mother searching for her kidnapped baby."),
            ),
            SizedBox(width:350,child: Text("IMDb 8.9")),
            SizedBox(width:350,child: Text("2022 12:01 min")),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Text("NEW MOVIE",style: TextStyle(color: Colors.black),),

                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}