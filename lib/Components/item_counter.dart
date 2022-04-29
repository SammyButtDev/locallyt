import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/const.dart';

class ItemBox extends StatelessWidget {
  ItemBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: Container(

        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.orange.shade100],
            ),
            border: Border.all(color: Colors.grey.shade300)),
        child: Padding(
          padding: EdgeInsets.only(top: 21.0.sp),
          child: ItemCounter(),
        ),
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
   ItemCounter({Key? key}) : super(key: key);

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;
  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Suger"),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _decrementCounter();
                      },
                      child: Container(
                        height: 26.sp,
                        width: 36.sp,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                          "-",
                          style:
                              TextStyle(color: primaryColor, fontSize: 24.sp),
                        )),
                      ),
                    ),
                    Container(
                      height: 26.sp,
                      width: 36.sp,
                      color: Colors.white,
                      child: Center(child: Text(count.toString())),
                    ),
                    GestureDetector(
                      onTap: () {
                        _incrementCounter();
                      },
                      child: Container(
                        height: 26.sp,
                        width: 36.sp,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                          "+",
                          style:
                              TextStyle(color: primaryColor, fontSize: 24.sp),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Container(
                      height: 26.sp,
                      width: 36.sp,
                      color: Colors.white,
                      child: Center(
                          child: Text(
                        "Qty",
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      )),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sun Flower Refind Oil"),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _decrementCounter();
                      },
                      child: Container(
                        height: 26.sp,
                        width: 36.sp,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                              "-",
                              style:
                              TextStyle(color: primaryColor, fontSize: 24.sp),
                            )),
                      ),
                    ),
                    Container(
                      height: 26.sp,
                      width: 36.sp,
                      color: Colors.white,
                      child: Center(child: Text(count.toString())),
                    ),
                    GestureDetector(
                      onTap: () {
                        _incrementCounter();
                      },
                      child: Container(
                        height: 26.sp,
                        width: 36.sp,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                              "+",
                              style:
                              TextStyle(color: primaryColor, fontSize: 24.sp),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Container(
                      height: 26.sp,
                      width: 36.sp,
                      color: Colors.white,
                      child: Center(
                          child: Text(
                            "Qty",
                            style: TextStyle(color: Colors.black, fontSize: 12.sp),
                          )),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item 3"),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _decrementCounter();
                      },
                      child: Container(
                        height: 26.sp,
                        width: 36.sp,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                              "-",
                              style:
                              TextStyle(color: primaryColor, fontSize: 24.sp),
                            )),
                      ),
                    ),
                    Container(
                      height: 26.sp,
                      width: 36.sp,
                      color: Colors.white,
                      child: Center(child: Text(count.toString())),
                    ),
                    GestureDetector(
                      onTap: () {
                        _incrementCounter();
                      },
                      child: Container(
                        height: 26.sp,
                        width: 36.sp,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                              "+",
                              style:
                              TextStyle(color: primaryColor, fontSize: 24.sp),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Container(
                      height: 26.sp,
                      width: 36.sp,
                      color: Colors.white,
                      child: Center(
                          child: Text(
                            "Qty",
                            style: TextStyle(color: Colors.black, fontSize: 12.sp),
                          )),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17.sp,
            ),
            Divider(
              color: Colors.blueGrey,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child: Text("new item"),),
                TextBtn(width: 132.sp, title: "Copy previous List", onTap: (){},color: btnColor,Txtcolor: Colors.white,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
