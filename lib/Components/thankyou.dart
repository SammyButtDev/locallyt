import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const.dart';
import 'locally_btn.dart';

class Thankyou extends StatelessWidget {
  Thankyou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorSeed,
      body: Center(
        child: Container(
          height: 490.sp,
          width: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.sp),
          ),
          child: Column(
            children: [
              Stack(alignment: Alignment.bottomCenter,
                children:  [
                  Image(image: AssetImage("assets/images/cloud.png")),
                  Image(image: AssetImage("assets/images/women.png")),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Thank you for your order !",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Your order was succesfully sent\nto nearest store",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: colorSeed,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 43.h,
              ),
              TextBtn(width: 200.sp, title: "Go to Orders", onTap: (){},Txtcolor: Colors.white,color: btnColor,),
            ],
          ),
        ),
      ),
    );
  }
}
