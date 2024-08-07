import 'package:flutter/material.dart';
import 'package:psyassist/pages/home.dart';
import 'package:psyassist/theme.dart';

void buatDialog(BuildContext context, String nama) {
  final mywidth = MediaQuery.of(context).size.width;
  final myheight = MediaQuery.of(context).size.height;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            height: 700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: bg_orange, width: 2), // Border warna oranye
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: <Widget>[
                  //IMAGE
                  Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/screen/Idea.png'),
                  ),
                  SizedBox(height: 30),
                  // TITLE
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Psychological First Aid ",
                      style: medium.copyWith(color: ft_orange),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 10),
                  //SUB TITLE
                  Text(
                    "Bantuan singkat yang menyediakan dukungan psikososial kepada individual, keluarga, dan komunitas .Menggunakan keterampilan mendengarkan aktif dan interaksi interpersonal",
                    style: regular.copyWith(color: black),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 30),
                  //BUTTON
                  Container(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 55.0),
                        backgroundColor: bg_orange,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child:
                          Text("Close", style: xmedium.copyWith(color: white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
