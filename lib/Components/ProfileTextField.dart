import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';



class PTextField extends StatelessWidget {
  final String image;
  final String title;
  final Widget suffix;
   PTextField({Key? key,required this.suffix,required this.title,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 47,right: 47,top: 20),
      child: SizedBox(
        child:ListTile(horizontalTitleGap: -10,visualDensity: VisualDensity.compact,
          leading: Image.asset(image,filterQuality: FilterQuality.high,),
          title: Padding(
            padding:  EdgeInsets.only(top: 8.0.sp),
            child: Text(title,style: TextStyle(color: colorSeed),),
          ),
          subtitle: TextField(decoration: InputDecoration(suffix: suffix,isDense: true
          ),
          ),
        ),
      ),
    );
  }
}
