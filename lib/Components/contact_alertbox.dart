


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';

contactDialog(context){
  return showDialog(context: context, builder: (BuildContext context){
    return SimpleDialog(
      children: [
        Container(
          height: 370,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.sp)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image(image: AssetImage("assets/images/thankyou.png"),),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text("Thank you for contacting us\nWe will answer you shortly",style: medium,textAlign: TextAlign.center,)
            ],
          ),
        ),
      ],
    );
  });
}