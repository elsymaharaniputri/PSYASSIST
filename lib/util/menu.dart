import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class Menu extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color bg_color;
  final Color ft_color;
  final Color icon_color;
  final Color btn_color;
  final Color ft_btn_color;
  final Color title_color;
  final Widget onPressed;

  const Menu(
      {required this.title,
      required this.subtitle,
      required this.bg_color,
      required this.btn_color,
      required this.ft_btn_color,
      required this.ft_color,
      required this.title_color,
      required this.icon_color,
      required this.onPressed,
      super.key,
      required int index});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // INITIAL TINGGI DAN LEBAR
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        width: mywidth * 0.4,
        // height: myheight * 0.28,
        decoration: BoxDecoration(
          color: widget.bg_color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(widget.title,
                    style: regular.copyWith(
                      color: widget.title_color,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left),
              )),

          SizedBox(height: 20),

          Text(
            widget.subtitle,
            style: small.copyWith(color: widget.ft_color),
          ),
          SizedBox(height: 50),
          //BUTTON
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      backgroundColor: widget.btn_color,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => widget.onPressed),
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Text("See",
                            style:
                                regular.copyWith(color: widget.ft_btn_color)),
                        SizedBox(width: 10),
                        Icon(
                          Icons.next_plan_rounded,
                          color: widget.icon_color,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
