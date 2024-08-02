import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:psyassist/theme.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(8.0), // Atur margin sesuai kebutuhan
          child:
              Image.asset('assets/images/logo/logo.png'), // Image on the left
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(height: 150),
            // LOGO
            Container(
              height: myheight * 0.3,
              width: mywidth * 0.5,
              child: Image.asset(
                'assets/images/screen/scc2.png',
                fit: BoxFit.contain,
              ),
            ),
            // TEXT
            Text(
              'Tingkatkan Dukungan Anda Dengan Aplikasi PsyAssist (App Psychological First Aid )!',
              textAlign: TextAlign.start,
              style: medium.copyWith(color: ft_orange),
            ),
            SizedBox(height: 20),
            // TEXT
            Text(
              'Aplikasi ini menyediakan panduan lengkap, materi interaktif, dan tips praktis yang dapat Anda akses kapan saja.',
              textAlign: TextAlign.start,
              style: regular.copyWith(color: black),
            ),
            SizedBox(height: 50),

            //BUTTON
            Container(
              width:
                  100.0, // Mengatur panjang tombol menjadi 50% dari lebar layar
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  backgroundColor: bg_orange,
                ),
                onPressed: () {},
                child: Text(
                  "Get Started",
                  style: medium.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
