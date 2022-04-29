
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/const.dart';

class ShopInfo extends StatelessWidget {
  ShopInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage("assets/images/shopimage.png"),
                        ),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text("20 left out of 50",style: TextStyle(fontSize: 10.sp),),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Shop_name 1"),
                        SizedBox(width: 50.sp,),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_outlined,
                              color: Colors.amber,size: 10.sp,
                            ),
                            SizedBox(
                              width: 5.sp,
                            ),
                            Icon(Icons.location_on,size: 10.sp,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      "Detail of the deal will apear here",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      "Detail of the deal will apear here",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Show more",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  color: primaryColor,
                                )
                              ],
                            ),),
                        TextBtn(width: 90.sp, title: "Grab Coupon", onTap: (){},color: btnColor,Txtcolor: Colors.white,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
