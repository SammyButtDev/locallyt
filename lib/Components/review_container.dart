import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(3),topRight: Radius.circular(3)),
              color: btnColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                children: [
                  Text(
                    "4.5",
                    style: TextStyle(color: Colors.white,fontSize: 12.sp),
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.white,
                    size: 10.sp,
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration( borderRadius: BorderRadius.only(topLeft: Radius.circular(3),topRight: Radius.circular(3)),
            color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                children: [
                  Text(
                    "1,769",
                    style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Reviews",
                    style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
