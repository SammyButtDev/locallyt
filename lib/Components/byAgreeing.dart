import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';

class TermCondition extends StatefulWidget {
   TermCondition({Key? key}) : super(key: key);

  @override
  _TermConditionState createState() => _TermConditionState();
}

class _TermConditionState extends State<TermCondition> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: 12.0.sp),
            child: Checkbox(
              value: value,
              onChanged: (var  values) {
                setState(() {
                  value = values!;
                });
              },
              activeColor: primaryColor,
              checkColor: Colors.white,
            ),
          ),
           SizedBox(
            width: MediaQuery.of(context).size.width*0.004,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "By Continuing you agree to our",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
               SizedBox(
                height: 10.sp,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Terms & Condition",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                     TextSpan(
                        text: " and ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
