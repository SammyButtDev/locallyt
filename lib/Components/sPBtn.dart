import 'package:flutter/material.dart';
import 'package:locallyt/const.dart';

class SPBtn extends StatelessWidget {
  final Function click;
  final String image;
    SPBtn({Key? key,required this.click, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap:(){
      click();
    },child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: colorSeed,
        shape: BoxShape.circle,
      ),
      child:  Image.asset(image,filterQuality: FilterQuality.high),

    ),
    );
  }
}
