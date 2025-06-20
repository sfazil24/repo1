import 'package:flutter/material.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Profile UI',
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              'syedfazil._.24',
              style: TextStyle(color: Colors.white),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ],
        ),
        actions: [
          Icon(Icons.link, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.add_box_outlined, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Info Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image
                  ),
                  SizedBox(width: 16),
                  // Followers / Following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCountColumn('0', 'posts'),
                        buildCountColumn('448', 'followers'),
                        buildCountColumn('452', 'following'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Name and Bio
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('S.Fazil', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text('●XVII 🍷', style: TextStyle(color: Colors.white)),
                  Text('●VIVRE.AIMER.RIRE🤍', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            SizedBox(height: 8),

            // Music Bar (Text only mock)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.music_note, size: 16, color: Colors.white),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'Suna Hai · Jubin Nautiyal, Rashmi Virag, Jeet Gannguli',
                      style: TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            // Buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white24),
                      ),
                      child: Text('Edit profile', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white24),
                      ),
                      child: Text('Share profile', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {},
                    child: Icon(Icons.person_add, color: Colors.white),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white24),
                      padding: EdgeInsets.all(12),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Highlights
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  buildHighlight('✈️'),
                  buildHighlight('📷'),
                  buildHighlight('🧭'),
                  buildHighlight('🪐'),
                  buildHighlight('+'),
                ],
              ),
            ),

            Divider(color: Colors.white24),

            // Bottom Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on, color: Colors.white),
                Icon(Icons.video_collection_outlined, color: Colors.white),
                Icon(Icons.person_pin_outlined, color: Colors.white),
              ],
            ),

            SizedBox(height: 20),

            Center(
              child: Column(
                children: [
                  Icon(Icons.camera_alt_outlined, color: Colors.white24, size: 50),
                  SizedBox(height: 8),
                  Text('No posts yet', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget buildCountColumn(String count, String label) {
    return Column(
      children: [
        Text(count, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget buildHighlight(String emoji) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white24,
            radius: 30,
            child: Text(emoji, style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}