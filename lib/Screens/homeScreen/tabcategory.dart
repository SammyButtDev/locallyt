import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Screens/homeScreen/general.dart';
import 'package:locallyt/const.dart';

class TabCat extends StatefulWidget {
   TabCat({Key? key}) : super(key: key);

  @override
  _TabCatState createState() => _TabCatState();
}

class _TabCatState extends State<TabCat>with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= TabController(length: 4, vsync: this);
    controller.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DefaultTabController(
          length: 4,
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(controller: controller,
                tabs: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: 8.0.sp),
                    child: Tab(
                      child: Container(
                        height: 39,
                        width: 100.w,
                        child: Center(child: Text("Grocery")),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: controller.index==0?Colors.transparent:colorSeed
                          ),
                            borderRadius:
                                BorderRadius.circular(10.sp), // Creates border
                            color: controller.index==0?colorSeed:Colors.white),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 8.0.sp),
                      child: Container(
                        height: 39,
                        width: 100.w,
                        child: Center(child: Text("General Store")),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: controller.index==1?Colors.transparent:colorSeed
                            ),
                            borderRadius:
                            BorderRadius.circular(10.sp), // Creates border
                            color: controller.index==1?colorSeed:Colors.white),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 8.0.sp),
                      child: Container(
                        height: 39,
                        width: 100.w,
                        child: Center(child: Text("Restaurant")),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: controller.index==2?Colors.transparent:colorSeed
                            ),
                            borderRadius:
                            BorderRadius.circular(10.sp), // Creates border
                            color: controller.index==2?colorSeed:Colors.white),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 8.0.sp),
                      child: Container(
                        height: 39,
                        width: 100.w,
                        child: Center(child: Text("Medical")),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: controller.index==3?Colors.transparent:colorSeed
                            ),
                            borderRadius:
                            BorderRadius.circular(10.sp), // Creates border
                            color: controller.index==3?colorSeed:Colors.white),
                      ),
                    ),
                  ),
                ],
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 12.sp),
                indicatorColor: Colors.black,
                unselectedLabelColor: colorSeed,
              ),
              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: [
                    general(),
                    general(),
                    general(),
                    general(),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
