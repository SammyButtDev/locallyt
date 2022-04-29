import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/contact_alertbox.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/const.dart';

class ContactUs extends StatelessWidget {
   ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Contact Us",
          style: Apptitle,
        ),
      ),
      backgroundColor: colorSeed,
      body: Container(
        height: Size.height,
        width: Size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.sp),
              topLeft: Radius.circular(20.sp)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.0.sp),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                      height: 130.h,
                      width: 370.w,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 30.0, top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                                "We would be happy to support you\nYou can write to us at:"),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                 Icon(Icons.mail),
                                SizedBox(
                                  width: 10.w,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child:  Text("care@localllyt.com")),
                              ],
                            ),
                            SizedBox(
                              height: 33.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children:  [
                      Flexible(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Text("OR"),
                      Flexible(
                          child: Divider(
                        color: Colors.grey,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You can drop us a message",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextFormField(
                        maxLines: 5,

                        decoration: InputDecoration(border: OutlineInputBorder(),fillColor: Colors.grey.shade300,
                            filled: true,

                            hintText: "Enter your comments here..."),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 30.0.sp),
                child: TextBtn(width: 370.w, title: "Submit", onTap: (){
                  contactDialog(context);
                },color: btnColor,Txtcolor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
