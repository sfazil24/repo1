import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const AashiquiApp());
}

class AashiquiApp extends StatelessWidget {
  const AashiquiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Aashiqui 2',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1E2A2F),
      ),
      home: const AashiquiScreen(),
    );
  }
}

class AashiquiScreen extends StatelessWidget {
  const AashiquiScreen({super.key});

  final List<Map<String, String>> songs = const [
    {"title": "Tum Hi Ho", "artists": "Mithoon, Arijit Singh"},
    {"title": "Sunn Raha Hai (Male Version)", "artists": "Ankit Tiwari"},
    {"title": "Chahun Main Ya Naa", "artists": "Palak Muchhal, Arijit Singh"},
    {"title": "Hum Mar Jayenge", "artists": "Tulsi Kumar, Arijit Singh"},
    {"title": "Meri Aashiqui", "artists": "Palak Muchhal, Arijit Singh"},
    {"title": "Piya Aaye Na", "artists": "Tulsi Kumar, KK"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/xyz.jpeg', width: 100
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Aashiqui 2',
              style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text('Mithoon', style: GoogleFonts.roboto(color: Colors.grey[400])),
            const SizedBox(height: 5),
            Text('2013 • 12 songs, 54 min 41 sec',
                style: GoogleFonts.roboto(color: Colors.grey[400], fontSize: 12)),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.favorite_border, color: Colors.white),
                const SizedBox(width: 18),
                Icon(Icons.share, color: Colors.white),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.green,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(Icons.play_arrow_rounded, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  final song = songs[index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(song['title']!,
                        style: GoogleFonts.roboto(color: Colors.white)),
                    subtitle: Text(song['artists']!,
                        style: GoogleFonts.roboto(color: Colors.grey)),
                    trailing: Icon(Icons.more_vert, color: Colors.white),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}