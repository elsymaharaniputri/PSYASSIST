import 'package:flutter/material.dart';
import '../theme.dart';

class PrinsipMendengar extends StatefulWidget {
  final Image image;
  final String title;

  const PrinsipMendengar({
    required this.title,
    required this.image,
    super.key,
    required int index,
  });

  @override
  State<PrinsipMendengar> createState() => _PrinsipMendengarState();
}

class _PrinsipMendengarState extends State<PrinsipMendengar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Row(
          children: [
            Container(width: 40, height: 40, child: widget.image),
            const SizedBox(width: 10), // Spacing between image and text
            Expanded(
              child: Text(
                widget.title,
                style: regular.copyWith(color: black),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
