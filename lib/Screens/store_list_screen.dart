import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/store_info.dart';

import '../const.dart';

class StoreList extends StatelessWidget {
   StoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorSeed,
      appBar: AppBar(elevation: 0,
        leading: TextButton(
          onPressed: () {
            Utils.mainAppNav.currentState!.pop();
          },
          child: Image(
            image: AssetImage(
              "assets/custIcons/Union.png",
            ),
            height: 20.sp,
            width: 20.sp,
          ),
        ),
        actions: [
          Flexible(
            child: Padding(
                padding: EdgeInsets.only(left: 80.sp, right: 30.sp),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration:
                      InputDecoration(suffixIcon: Icon(Icons.search,color: Colors.white,),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                )),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22.sp),
            topRight: Radius.circular(22.sp),
          ),
        ),
        child: Column(children: [
          SizedBox(
            height: 20.sp,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              StoreInfo(),
              StoreInfo(),
              StoreInfo(),
            ],
          ),
        ],),
      ),
    );
  }
}
