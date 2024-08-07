import 'package:flutter/material.dart';
import '../theme.dart';

class PfaHome extends StatefulWidget {
  final String title;
  final Image image;
  final Icon icon;
  final Widget nextPage;

  const PfaHome({
    required this.title,
    required this.image,
    required this.icon,
    required this.nextPage,
    super.key,
    required int index,
  });

  @override
  State<PfaHome> createState() => _PfaHomeState();
}

class _PfaHomeState extends State<PfaHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Material(
        color: Colors.transparent,
        child: InkResponse(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget.nextPage),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: bg_blue2,
              borderRadius: BorderRadius.circular(15),
            ),
            // TEXT
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              leading: widget.image,
              title: Text(
                widget.title,
                style:
                    regular.copyWith(color: black, fontWeight: FontWeight.bold),
              ),
              // ICON
              trailing: IconButton(
                icon: widget.icon,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => widget.nextPage),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
