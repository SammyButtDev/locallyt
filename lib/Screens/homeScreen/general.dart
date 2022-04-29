import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/models/shop_info.dart';


class general extends StatelessWidget {
   general({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:Column(mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ListView(shrinkWrap: true,
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.0.sp),
                  child: ShopInfo(),
                ),
                SizedBox(height: 8.sp,),

                Padding(
                  padding:  EdgeInsets.all(8.sp),
                  child: ShopInfo(),
                ),
                SizedBox(height: 8.sp,),
                Padding(
                  padding:  EdgeInsets.all(8.sp),
                  child: ShopInfo(),
                ),
                SizedBox(height: 8.sp,),
                Padding(
                  padding:  EdgeInsets.all(8.0.sp),
                  child: ShopInfo(),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
