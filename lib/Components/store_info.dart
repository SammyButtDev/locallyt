import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/Components/review_container.dart';
import 'package:locallyt/const.dart';

class StoreInfo extends StatelessWidget {
  StoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      child: SizedBox(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.sp,
                    width: 100.sp,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      height: 42.sp,
                      width: 42.sp,
                      color: Colors.grey,
                      child: Image(
                        image: AssetImage("assets/custIcons/mount.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Venus super market..."),
                        SizedBox(
                          width: 24.sp,
                        ),
                        Row(
                          children: [

                            Icon(CupertinoIcons.heart,size: 16.sp,),

                           Icon(CupertinoIcons.location,size: 16.sp,),

                          Icon(CupertinoIcons.phone,size: 16.sp,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Row(
                      children: [
                        Text("Thergaon  |  2.5 km",style: TextStyle(fontSize: 10.sp,color: Colors.black),),
                        SizedBox(
                          width: 145.sp,
                        ),
                        ReviewContainer(),
                      ],
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text("Delivery: 1 hrs  |  No min order value",style: TextStyle(fontSize: 10.sp,color: Colors.black),),
                  ],
                ),
              ],
            ),
            Divider(),

            Padding(
              padding:  EdgeInsets.only(bottom:10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                  }, child: Text("Apply coupon code",style: TextStyle(color: CupertinoColors.activeBlue),)),
                  SizedBox(
                    width: 32.sp,
                  ),
                  TextBtn(width: 160, title: "Share List", onTap: (){
                    Utils.mainAppNav.currentState!.pushNamed('/StoreTut');
                  },color: colorSeed,Txtcolor: Colors.white,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
