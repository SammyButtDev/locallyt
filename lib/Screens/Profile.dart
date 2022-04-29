import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locallyt/Components/ProfileTextField.dart';
import 'package:locallyt/Components/sPBtn.dart';
import 'package:locallyt/const.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              alignment: Alignment.center,
              children: [
                Container(
                  color: colorSeed,
                  height: size.height * 0.3,
                ),
                Positioned(
                  bottom: -50,
                  child: CircleAvatar(backgroundImage: ExactAssetImage("assets/images/userImage.png",),radius: 80),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.020,
                ),
                Row(
                  children: [
                    SPBtn(click: () {}, image: "assets/custIcons/camera.png"),
                    SPBtn(click: () {}, image: "assets/custIcons/Upload.png"),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                SizedBox(
                  height: size.height * 0.017,
                ),
                Text(
                  "Hello, User Name",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: colorSeed),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Column(
                  children: [
                    PTextField(
                        suffix: Image.asset(
                          "assets/custIcons/pen.png",
                          color: btnColor,
                        ),
                        title: "Name",
                        image: "assets/custIcons/user1.png"),
                    PTextField(
                        suffix:Image.asset(
                          "assets/custIcons/pen.png",
                          color: btnColor,
                        ),
                        title: "Linked Mobile Number",
                        image: "assets/custIcons/call.png"),
                    PTextField(
                        suffix:Image.asset(
                          "assets/custIcons/pen.png",
                          color: btnColor,
                        ),
                        title: "Email Address",
                        image: "assets/custIcons/mail.png"),
                    PTextField(
                        suffix: Image.asset(
                          "assets/custIcons/pen.png",
                          color: btnColor,
                        ),
                        title: "Delivery Address",
                        image: "assets/custIcons/pin.png"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
