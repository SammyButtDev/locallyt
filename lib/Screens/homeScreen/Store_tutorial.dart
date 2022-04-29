import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/Components/thankyou.dart';
import 'package:locallyt/app_Router.dart';

import '../../const.dart';

class StoreTut extends StatelessWidget {
  const StoreTut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
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
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Center(
                      child: Text(
                    "How it works?  ",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                RichText(
                  text: TextSpan(
                    text: "1.",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Tap the button at the bottom of this screen",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.sp,
                ),
                Center(
                    child: TextBtn(
                  width: 165.sp,
                  title: "Request  Quotes",
                  onTap: () {},
                  color: btnColor,
                  Txtcolor: Colors.white,
                )),
                SizedBox(
                  height: 25.67.sp,
                ),
                Flexible(child: Divider(
                  color: Colors.grey.shade200,
                  thickness: 5,
                ),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.sp),
                  child: RichText(
                    text: TextSpan(
                      text: "2.",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "LocallyT app will send your request to the best nearby stores",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image(image: AssetImage("assets/images/tut1.png")),
                ),
                Flexible(child: Divider(
                  color: Colors.grey.shade200,
                  thickness: 5,
                ),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.sp),
                  child: RichText(
                    text: TextSpan(
                      text: "3.",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Stores(max 3) will start responding with price and availability.Feel free to call the store.",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image(image: AssetImage("assets/images/tut3.png")),
                ),
                Flexible(child: Divider(
                  color: Colors.grey.shade200,
                  thickness: 5,
                ),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.sp),
                  child: RichText(
                    text: TextSpan(
                      text: "4.",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Tap the quotation under “Pre-order confirmation” section of\n  app.Review and confirm order.",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image(image: AssetImage("assets/images/tut2.png")),
                ),
                Flexible(child: Divider(
                  color: Colors.grey.shade200,
                  thickness: 5,
                ),),
                TextBtn(width: double.infinity, title: "Request Quotes", onTap: (){
                  Utils.mainAppNav.currentState!.push(PageViewTransition(builder: (_)=>Thankyou()));
                },color: btnColor,Txtcolor: Colors.white,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
