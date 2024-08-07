import 'package:flutter/material.dart';
import 'package:psyassist/pages/home.dart';
import 'package:psyassist/pages/mendengar.dart';
import 'package:psyassist/theme.dart';

void dialogMendengar(BuildContext context, String nama) {
  final mywidth = MediaQuery.of(context).size.width;
  final myheight = MediaQuery.of(context).size.height;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: AlertDialog(
          content: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              // height: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: bg_orange, width: 2), // Border warna oranye
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

                    // TITLE
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mendengarkan Aktif ",
                        style: medium.copyWith(color: ft_orange),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 15),
                    //SUB TITLE
                    Text(
                      "Metode komunikasi yang bertujuan mendapatkan gambaran lengkap mengenai pembicara dan membuatnya merasa nyaman karena diperhatikan dan dipahami",
                      style: regular.copyWith(color: black),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 15),

                    Container(
                      child: Text(
                        "Mendengarkan aktif menggunakan sebagian besar indera ",
                        style: regular.copyWith(
                            color: ft_orange, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    //IMAGE CONTENT 1
                    Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/mendengar/p.png'),
                    ),

                    SizedBox(height: 10),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mendengar()));
                        },
                        child: Text("Close",
                            style: xmedium.copyWith(color: white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
