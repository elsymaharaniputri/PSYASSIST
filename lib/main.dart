import 'package:flutter/material.dart';
import './pages/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          const Screen(), // pastikan kelas Screen ada di screen.dart dan sudah menggunakan const jika memungkinkan
    );
  }
}
