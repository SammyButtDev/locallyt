import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/Components/dottedDivider.dart';
import 'package:locallyt/Components/drawerTile.dart';
import 'package:locallyt/const.dart';
import 'package:locallyt/models/drawermodel.dart';

class CustDrawer extends StatelessWidget {
  final String? name;
  final String? number;
  final String? email;
  // List<DrawerModel> model = DrawerModel().drawerTile;

  CustDrawer(
      {Key? key,
      this.name = 'User Name',
      this.email = 'example@gmail.com ',
      this.number = '1234567890'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius:  BorderRadius.only(
          topRight: Radius.circular(21), bottomRight: Radius.circular(31)),
      child: Drawer(
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: colorSeed),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: size.height * 0.060,
                    ),
                    Text(
                      name!,
                      style:  TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      number!,
                      style:  TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      email!,
                      style:  TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //height: size.height * 06,
              color: Colors.white,
              child: ListView(
                shrinkWrap: true,
                children: [
                  DrawerTile(
                      title: "Home",
                      image: "assets/custIcons/home.png",
                      click: () {
                        print("Home");
                      }),
                  DrawerTile(
                      title: "Profile",
                      click: () {
                        Utils.mainAppNav.currentState!.pushNamed('/Profile');
                      },
                      image: "assets/custIcons/profile.png"),
                  DrawerTile(
                    title: "Notification",
                    click: () {},
                    image: "assets/custIcons/notification.png",
                  ),
                  DrawerTile(
                    title: "Manage Favourites",
                    click: () {},
                    image: 'assets/custIcons/manage.png',
                  ),
                  DrawerTile(
                    title: "Rate us",
                    click: () {},
                    image: "assets/custIcons/Rate.png",
                  ),
                  DrawerTile(
                    title: "Contact Us",
                    click: () {
                      Utils.mainAppNav.currentState!.pushNamed('/ContactUs');
                    },
                    image: "assets/custIcons/Contact.png",
                  ),
                  DrawerTile(
                    title: "Refer",
                    click: () {},
                    image: "assets/custIcons/Refer.png",
                  ),
                  DrawerTile(
                    title: "Terms & Conditions",
                    click: () {},
                    image: "assets/custIcons/Terms.png",
                  ),
                  DrawerTile(
                    title: "Privacy Policy",
                    click: () {},
                    image: "assets/custIcons/Privacy.png",
                  ),
                  DrawerTile(
                    title: "Logout",
                    click: () {},
                    image: "assets/custIcons/Logout.png",
                  ),
                  DottedDivider(
                      line: DotLine(), paint: Paint()..strokeWidth = 1.0),
                ],
              ),
            ),
             SizedBox(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 14.0.sp, right: 30.sp),
                  child: Text(
                    "Version 1.0",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(150, 150, 150, 1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
