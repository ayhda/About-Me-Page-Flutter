import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
        backgroundColor: const Color.fromARGB(
            255, 228, 244, 255), // Ganti warna AppBar jika ingin
      ),
      body: Container(
        // Latar belakang gradien
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade300,
              Colors.purple.shade400
            ], // Ganti warna gradien
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Foto Profil
                Hero(
                  tag: 'profile-pic',
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                        'assets/profil.png'), // Sesuaikan lokasi foto
                  ),
                ),
                SizedBox(height: 20),

                // Nama Lengkap
                Text(
                  'Nama Lengkap: I Gusti Ngurah Adhya Pradipta',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Ganti warna teks
                  ),
                ),
                SizedBox(height: 10),

                // NRP
                Text(
                  'NRP: 5026221184',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70, // Ganti warna teks
                  ),
                ),
                SizedBox(height: 10),

                // Fun Fact
                Text(
                  'Fun Fact: Saya sangat suka minum air putih!',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.white70, // Ganti warna teks
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),

                // Tombol Tampilkan Fun Fact (dengan SnackBar)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 209, 193, 255), // Ganti warna tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              "Sistem Informasi, Institut Teknologi Sepuluh Nopember")),
                    );
                  },
                  child: Text("Tampilkan Tempat Kuliah"),
                ),
                SizedBox(height: 20),

                // Tombol untuk menampilkan dialog fun fact
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 144, 230, 221), // Ganti warna tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Hobi"),
                          content: Text("Gym, Membaca, Poker!"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Hobi"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
