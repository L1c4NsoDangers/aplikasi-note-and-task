import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the EasyList application.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Wherever and whenever, we are always ready!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Spasi antara teks dan tombol
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman masuk akun ketika tombol "Login" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Warna latar belakang tombol
                textStyle: TextStyle(fontSize: 16), // Ukuran teks tombol
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10), // Padding tombol
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)), // Bentuk tombol
              ),
            ),
            SizedBox(height: 10), // Spasi antara tombol login dan register
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman registrasi saat tombol "Register" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('Register', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Warna latar belakang tombol
                textStyle: TextStyle(fontSize: 16), // Ukuran teks tombol
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10), // Padding tombol
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)), // Bentuk tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}
