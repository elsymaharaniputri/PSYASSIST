import 'package:flutter/material.dart';

class Point extends ChangeNotifier {
  String? point;

  Point({required this.point});
}

class AccordionModel extends ChangeNotifier {
  String? nomor;
  String? title;
  String? subtitle;
  List<Point> point;

  AccordionModel(
      {required this.nomor,
      required this.point,
      required this.subtitle,
      required this.title});
}
