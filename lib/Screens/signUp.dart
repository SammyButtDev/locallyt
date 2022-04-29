import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/Components/locallytTextField.dart';
import 'package:locallyt/const.dart';

class SignUP extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController area = TextEditingController();
  final ScrollController controller = ScrollController();
  final FocusNode nameNode = FocusNode();
  final FocusNode emailNode = FocusNode();
  final FocusNode addressNode = FocusNode();
  final FocusNode areaNode = FocusNode();
  SignUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 31.0),
          child: SizedBox(
            height: 100,
            child: Center(
              child: TextBtn(
                  width: double.infinity,
                  title: "Proceed",
                  onTap: () {
                    Utils.mainAppNav.currentState!.pushReplacementNamed('/Home');
                  },
                  color: btnColor,
                  Txtcolor: Colors.white),
            ),
          ),
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.070,
              ),
              Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: primaryColor),
                ),
              ),
              SizedBox(
                height: size.height * 0.048,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 38.0),
                child: Text(
                  "Almost there!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: primaryColor),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 41.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.036,
                    ),
                    LocTextField(
                        controller: name,labelText: "Full Name",
                        hintText: "  Enter your full name",
                        focusNode: nameNode,
                        validator: 3),
                    SizedBox(
                      height: size.height * 0.036,
                    ),
                    LocTextField(
                        controller: email,
                        labelText: "Email Address",
                        hintText: "Enter your email address...",
                        focusNode: emailNode,
                        validator: 1),
                    SizedBox(
                      height: size.height * 0.036,
                    ),
                    LocTextField(
                        controller: address,validator: 0,
                        labelText: "Enter Your Address",
                        hintText: "Flatno./Building name/Street name...",
                        focusNode: addressNode),
                    SizedBox(
                      height: size.height * 0.036,
                    ),
                    LocTextField(
                        controller: area,suffix: Icon(CupertinoIcons.search,color: primaryColor,),
                        labelText: "Search Area with Google",
                        hintText: "Area / locality name...",validator: 0,
                        focusNode: areaNode),
                    SizedBox(
                      height: size.height * 0.047,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Icon(
                          Icons.my_location_sharp,
                          color: CupertinoColors.activeBlue,
                        ),
                        SizedBox(
                          width: size.width * 0.013,
                        ),
                         Text(
                          "Use current location",
                          style:  TextStyle(
                              color: CupertinoColors.activeBlue,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
