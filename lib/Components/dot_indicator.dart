import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';

class IndicatorBar extends StatelessWidget {
  int currentIndex;
  late int index;
  IndicatorBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding:  EdgeInsets.only(right: 10.0.sp),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: currentIndex == index
                                ? primaryColor
                                : dotUnselected,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      )),
            ),
            TextButton(
              onPressed: () {
                Utils.mainAppNav.currentState!.pushReplacementNamed('/OTP');
              },
              child: Text(
                currentIndex == 2 ? "Get Start" : "Skip",
                style:
                     TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
