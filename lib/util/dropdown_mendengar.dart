import 'package:flutter/material.dart';

import 'package:accordion/accordion.dart';
import 'package:psyassist/model/accordionmodel.dart';
import 'package:psyassist/theme.dart';

class AccordionMendengar {
  AccordionSection section(
      String? title, List<Point> point, String? subtitle, String? nomor) {
    return AccordionSection(
      headerPadding: EdgeInsets.all(18),
      isOpen: false,
      leftIcon: Container(
        alignment: Alignment.center,
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: bg_orange2, // Pastikan bg_orange2 sudah didefinisikan
        ),
        child: Text(
          nomor!, // Pastikan widget.nomor sudah didefinisikan
          style: regular.copyWith(
            color: black, // Pastikan black sudah didefinisikan
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      // contentVerticalPadding: 20,
      headerBackgroundColor: bg_blue,
      headerBackgroundColorOpened: bg_blue,
      headerBorderWidth: 1,
      contentBackgroundColor: bg_blue2,
      // header: Text('Parafrase', style: xmedium.copyWith(color: black)),
      header: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                title!,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                subtitle!,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      content: Column(
          children: point.map((e) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.deepOrange,
            ),
            Flexible(
              child: Text(
                e.point!,
                maxLines: 4,
                style: regular.copyWith(color: black),
              ),
            ),
          ],
        );
      }).toList()),
    );
  }
}
