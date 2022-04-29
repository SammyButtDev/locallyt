import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:locallyt/Components/OTP_pin.dart';
import 'package:locallyt/Components/byAgreeing.dart';
import 'package:locallyt/Components/locally_btn.dart';
import 'package:locallyt/const.dart';

class OTP extends StatelessWidget {
  PageController controller = PageController();
  OTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
             Padding(
              padding: EdgeInsets.only(top: 68.0),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/Logo.png'),
                  fit: BoxFit.scaleDown,
                  height: 180,
                  width: 180,
                ),
              ),
            ),
            Flexible(
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics:  NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 31.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.058,
                        ),
                         Text(
                          "Let's get you started",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 60,
                                child: TextField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(4),
                                  ],
                                  decoration:  InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "+91",
                                    hintStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  style:  TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                               Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: SizedBox(
                                  height: 31,
                                  child: VerticalDivider(
                                    color: Color.fromRGBO(150, 150, 150, 1),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration:  InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Enter Phone Number"),
                                  style:  TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.050,
                        ),
                        TextBtn(
                            width: double.infinity,
                            title: "Get OTP",
                            onTap: () {
                              controller.nextPage(
                                  duration:  Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            color: btnColor,
                            Txtcolor: Colors.white),
                        SizedBox(
                          height: size.height * 0.050,
                        ),
                         TermCondition(),
                      ],
                    ),
                  ),
                  //Get PhoneNumber
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 31.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.058,
                        ),
                         Text(
                          "Enter 4 digit OTP",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OtpPin(first: true, last: false),
                             SizedBox(
                              width: 30,
                            ),
                            OtpPin(first: false, last: false),
                             SizedBox(
                              width: 30,
                            ),
                            OtpPin(first: false, last: false),
                             SizedBox(
                              width: 30,
                            ),
                            OtpPin(first: false, last: true),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.050,
                        ),
                        TextBtn(
                            width: double.infinity,
                            title: "Continue",
                            onTap: () {
                              Utils.mainAppNav.currentState!.pushNamed('/Signup');
                            },
                            color: btnColor,
                            Txtcolor: Colors.white),
                        SizedBox(
                          height: size.height * 0.050,
                        ),
                        RichText(
                          text:  TextSpan(
                              text: "OTP has been sent to ",
                              style: TextStyle(
                                color: Color.fromRGBO(150, 150, 150, 1),
                              ),
                              children: [
                                TextSpan(
                                  text: "9874563210",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ]),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text(
                                "Haven’t received your OTP yet?",
                                style: TextStyle(
                                  color: Color.fromRGBO(150, 150, 150, 1),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                              RichText(
                                text:  TextSpan(
                                    text: "00: ",
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: "58",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //Get OPT
                ],
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
