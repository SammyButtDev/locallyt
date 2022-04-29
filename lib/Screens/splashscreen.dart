import 'package:flutter/material.dart';
import 'package:locallyt/const.dart';


class SplashScreen extends StatelessWidget {
  String? goToPage;
  SplashScreen({Key? key,required this.goToPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed( Duration(seconds: 3),()async{
      Utils.mainAppNav.currentState!.pushReplacementNamed(goToPage!);
    });
    return  Scaffold(
      body: Center(
        child: SizedBox(
          height: 350,
          width: 350,
          child: Image(image: AssetImage('assets/images/Logo.png',),fit: BoxFit.contain,),
        ),
      ),
    );
  }
}
