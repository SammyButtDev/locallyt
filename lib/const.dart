import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Utils{
  static GlobalKey<NavigatorState> mainAppNav = GlobalKey();
  static GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
}
Color primaryColor =  Color.fromRGBO(9, 170, 199, 1);
Color dotUnselected = Color.fromRGBO(196, 196, 196, 1);
Color btnColor=  Color.fromRGBO(252, 100, 1, 1);
Color colorSeed =  Color.fromRGBO(38, 63, 104, 1);

TextStyle Apptitle = TextStyle(
  fontSize: 20.sp,fontWeight: FontWeight.w500,
  color: Colors.white,
);

TextStyle medium =TextStyle(
  fontSize: 20.sp,fontWeight: FontWeight.w500,
  color: Colors.black,
);