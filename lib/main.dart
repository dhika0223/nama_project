import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  Widget buildItem(IconData icon, String text) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(text, style: TextStyle(fontSize: 16)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100, // Background biru
      appBar: AppBar(
        title: Text("Profil Saya"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            // Data Profil
            buildItem(Icons.person, "Nama: Andhika Dwi Pebrianta"),
            buildItem(Icons.badge, "NIM: 240103087"),
            buildItem(Icons.class_, "Kelas: TI24A3"),
            buildItem(Icons.school, "Jurusan: Teknik Informatika"),
          ],
        ),
      ),
    );
  }
}