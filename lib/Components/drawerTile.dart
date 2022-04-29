import 'package:flutter/material.dart';
import 'package:locallyt/const.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final String image;
  final Function click;
   DrawerTile(
      {Key? key, required this.title, required this.click, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.067,
      child: Material(
        child: ListTile(
          onTap: () {
            click();
          },
          leading: Image.asset(
            image,
            filterQuality: FilterQuality.high,
          ),
          horizontalTitleGap: size.width * 0.027,
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, color: colorSeed),
          ),
        ),
      ),
    );
  }
}
