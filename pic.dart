import 'package:flutter/material.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final Color darkBg = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBg,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: darkBg,
            floating: true,
            pinned: true,
            expandedHeight: 220,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your asset
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: darkBg,
                            child: Icon(Icons.add, size: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("S.Fazil",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildStat("0", "Posts"),
                              _buildStat("448", "Followers"),
                              _buildStat("452", "Following"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("●XVII 🍷", style: TextStyle(color: Colors.white)),
                  Text("●ᴠɪᴠʀᴇ.ᴀɪᴍᴇʀ.ʀɪʀᴇ🤍", style: TextStyle(color: Colors.white)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.play_circle, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text("Suna Hai - Jubin Nautiyal", style: TextStyle(color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      _buildHighlight("assets/highlight1.png", "✈️"),
                      SizedBox(width: 10),
                      _buildHighlight("assets/highlight2.png", "🪐"),
                      SizedBox(width: 10),
                      _buildHighlight(null, "New", isAdd: true),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Column(
                      children: [
                        Icon(Icons.camera_alt_outlined, color: Colors.white24, size: 50),
                        SizedBox(height: 10),
                        Text("No posts yet", style: TextStyle(color: Colors.white30)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String count, String label) {
    return Column(
      children: [
        Text(count, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }

  Widget _buildHighlight(String? imagePath, String label, {bool isAdd = false}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey[800],
          child: isAdd
              ? Icon(Icons.add, color: Colors.white)
              : imagePath != null
              ? Image.asset(imagePath, fit: BoxFit.cover)
              : null,
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}