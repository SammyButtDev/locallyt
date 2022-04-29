import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';



class TextBtn extends StatelessWidget {

  final double width;
  final Color? color;
  final Color? Txtcolor;
  final String title;
  final Function onTap;
   TextBtn({Key? key, required this.width, this.color, required this.title, required this.onTap,this.Txtcolor=Colors.black }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(onPressed: ()=>onTap(),style:  ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),elevation: MaterialStateProperty.all(3),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
        child:  Padding(
          padding:  EdgeInsets.symmetric(vertical: 3.sp),
          child: FittedBox(
            child: Text(
              title,
              style:  TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Txtcolor,
              ),
            ),
          ),
        ),

      ),
    );
  }
}
