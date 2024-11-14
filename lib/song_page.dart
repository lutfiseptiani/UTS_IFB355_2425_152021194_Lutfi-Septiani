// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class song_page extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<song_page> {
  AudioPlayer audioPlayer = AudioPlayer();
  String audioUrl =
      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3";
  String imageUrl =
      "https://images.pexels.com/photos/3959994/pexels-photo-3959994.jpeg"; // Ganti dengan URL gambar Anda

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Song Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 120, 120),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imageUrl, // Mengambil gambar dari internet
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Monokrom',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'inilutfi',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: IconButton(
                    icon: Icon(Icons.skip_previous),
                    onPressed: () {
                      // Fungsi untuk lagu sebelumnya
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: IconButton(
                    icon: Icon(Icons.play_circle_filled, size: 30),
                    onPressed: () {
                      audioPlayer.play(Uri.parse(audioUrl) as Source);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: IconButton(
                    icon: Icon(Icons.skip_next),
                    onPressed: () {
                      // Fungsi untuk lagu selanjutnya
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.shuffle),
                  onPressed: () {
                    // Fungsi untuk acak lagu
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Fungsi untuk menambahkan ke favorit
                  },
                ),
                IconButton(
                  icon: Icon(Icons.queue_music),
                  onPressed: () {
                    // Fungsi untuk daftar putar
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
