import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/category.dart';
import 'package:locallyt/Components/custDrawer.dart';
import 'package:locallyt/Screens/homeScreen/tabcategory.dart';
import 'package:locallyt/const.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final images = [
    'assets/images/slideImage.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: Utils.scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Utils.scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
          actions: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.deepOrange,
                  size: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Deleivery to",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Icon(
                          CupertinoIcons.chevron_down,
                          size: 5.sp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Text("Rose Icon, Pimple Saudagar..."),
                  ],
                ),
              ],
            ),
          ],
        ),
        drawer: CustDrawer(),
        backgroundColor: colorSeed,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.sp),
                  topRight: Radius.circular(22.sp),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                CarouselSlider(
                  items: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/slideImage.png',
                          filterQuality: FilterQuality.high,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 100.sp,
                            width: 165.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              color: Colors.white.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/custIcons/discount.png",
                                      ),
                                      height: 25.sp,
                                      width: 25.sp,
                                    ),
                                    SizedBox(
                                      width: 20.sp,
                                    ),
                                    Text(
                                      "30% OFF",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Text(
                                  "Buy Medicine",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0.sp),
                                  child: Text(
                                    "Buy Medicine",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  options: CarouselOptions(enlargeCenterPage: true),
                ),

                Text(
                  "To order from the best stores around you",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Category(),
                SizedBox(
                  height: 5.h,
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 3,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Today's Coupon",
                  style: medium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Flexible(child: TabCat()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
