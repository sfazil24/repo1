import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class InstagramProfilePage extends StatelessWidget {
  const InstagramProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const Text("syedfazil._.24", style: TextStyle(fontWeight: FontWeight.bold)),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
        actions: const [
          Icon(Icons.link),
          SizedBox(width: 16),
          Icon(Icons.add_box_outlined),
          SizedBox(width: 16),
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Info Row
            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/maahi.jpg'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 12,
                        child: const Icon(Icons.add, size: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [
                    Text("0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("posts"),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: const [
                    Text("448", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("followers"),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: const [
                    Text("452", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("following"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text("S.Fazil", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text("⚫XVII 🍷"),
            Text(
              "◤VIVRE.AIMER.RIRE🤍",
              style: GoogleFonts.orbitron(fontSize: 12),
            ),
            const SizedBox(height: 6),
            const Row(
              children: [
                Icon(Icons.music_note, size: 16),
                Text("Suna Hai · Jubin Nautiyal", style: TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: () {}, child: const Text("Edit profile"))),
                const SizedBox(width: 10),
                Expanded(child: OutlinedButton(onPressed: () {}, child: const Text("Share profile"))),
                const SizedBox(width: 10),
                OutlinedButton(onPressed: () {}, child: const Icon(Icons.person_add_alt)),
              ],
            ),
            const SizedBox(height: 20),
            // Highlights Row
            Row(
              children: [
                _buildHighlight("assets/foot.jpeg", "🧭"),
                const SizedBox(width: 10),
                _buildHighlight("assets/foot.jpeg", "🪐"),
                const SizedBox(width: 10),

                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(Icons.add, size: 30),
                    ),
                    const SizedBox(height: 5),
                    const Text("New", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin_outlined), label: ""),
        ],
      ),
    );
  }

  Widget _buildHighlight(String imagePath, String emoji) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white24,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        const SizedBox(height: 5),
        Text(emoji, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}