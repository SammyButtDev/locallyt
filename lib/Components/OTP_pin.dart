import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';


class OtpPin extends StatelessWidget {
  bool first;
  bool last;
   OtpPin({Key? key,required this.first,required this.last}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 60,
      width: 46,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextFormField(
          autofocus: true,
          onChanged: (value){
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style:  TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter:  Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide:  BorderSide(width: 2.sp, color:  Color.fromRGBO(150, 150, 150, 1),),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: primaryColor),
                borderRadius: BorderRadius.circular(12)),
          ),

        ),
      ),

    );
  }
}
