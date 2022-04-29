import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/item_counter.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/const.dart';

class ItemList extends StatelessWidget {
  ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorSeed,
      appBar: AppBar(
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Utils.mainAppNav.currentState!.pop();
          },
          child: Image(
            image: AssetImage(
              "assets/custIcons/Union.png",
            ),
            height: 20,
            width: 20,
          ),
        ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              children: [
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  "Add Picture of your list",
                  style: medium,
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  "or picture of produts you want",
                  style: medium,
                ),
                SizedBox(
                  height: 15.sp,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60.sp,
                            width: 60.sp,
                            color: Colors.grey.shade300,
                            child: Image(
                              image: AssetImage("assets/custIcons/mount.png"),
                            ),
                          ),
                          SizedBox(
                            width: 20.sp,
                          ),
                          Container(
                            height: 60.sp,
                            width: 60.sp,
                            color: Colors.grey.shade300,
                            child: Image(
                              image: AssetImage("assets/custIcons/mount.png"),
                            ),
                          ),
                          SizedBox(
                            width: 20.sp,
                          ),
                          Container(
                            height: 60.sp,
                            width: 60.sp,
                            color: Colors.grey.shade300,
                            child: Image(
                              image: AssetImage("assets/custIcons/mount.png"),
                            ),
                          ),
                          SizedBox(
                            width: 20.sp,
                          ),
                          Container(
                            height: 60.sp,
                            width: 60.sp,
                            color: Colors.grey.shade300,
                            child: Image(
                              image: AssetImage("assets/custIcons/mount.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Center(
                        child: Container(
                          height: 43.sp,
                          width: 43.sp,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: primaryColor),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 40.0.sp),
                        child: Row(
                          children: [
                            Flexible(child: Divider()),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("OR"),
                            ),
                            Flexible(child: Divider()),
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Text("You can also make a list of items",style: medium,),
                      SizedBox(
                        height: 15.sp,
                      ),
                      ItemBox(),
                      SizedBox(
                        height: 17.sp,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.all(10.0.sp),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Looking for lowest pricing?",style: TextStyle(color: primaryColor),),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding:  EdgeInsets.all(20.0.sp),
              child: TextBtn(width: double.infinity, title: "Select Store", onTap: (){
                Utils.mainAppNav.currentState!.pushNamed('/StoreList');
              },color: btnColor,Txtcolor: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
