import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/const.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(horizontal: 12),
      children: [
        GestureDetector(
          onTap: (){
            Utils.mainAppNav.currentState!.pushNamed('/Itemlist');
            print("Grocery");
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/grocery.png"),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Grocery",
                    style: medium,
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            print("General Store");
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/store.png"),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "General Store",
                    style: medium,
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            print("restaurant");
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/restaurant.png"),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Restaurant",
                    style: medium,
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            print("Medicines");
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/medicine.png"),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Medicines",
                    style: medium,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: (4 / 3),
        crossAxisCount: 2,
        crossAxisSpacing: 12.0.sp,
        mainAxisSpacing: 12.0.sp,
      ),
      shrinkWrap: true,
    );
  }
}
