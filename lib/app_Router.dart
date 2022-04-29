import 'package:flutter/material.dart';
import 'package:locallyt/Screens/Contact_us.dart';
import 'package:locallyt/Screens/homeScreen/Store_tutorial.dart';
import 'package:locallyt/Screens/homeScreen/homeScreen.dart';
import 'package:locallyt/Screens/item_order_nav.dart';
import 'package:locallyt/Screens/oTPScreen.dart';
import 'package:locallyt/Screens/onBoard.dart';
import 'package:locallyt/Screens/signUp.dart';
import 'package:locallyt/Screens/splashscreen.dart';
import 'package:locallyt/Screens/store_list_screen.dart';

import 'Screens/Profile.dart';
import 'Screens/itemlist.dart';

class PageViewTransition<T> extends MaterialPageRoute<T> {
  PageViewTransition({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
//    if (settings.isInitialRoute) return child;
    if (animation.status == AnimationStatus.reverse) {
      return super
          .buildTransitions(context, animation, secondaryAnimation, child);
    }
    return FadeTransition(opacity: animation, child: child);
  }
}

class AppRoute {
  static const String splashScreen = '/';
  static const String onBoard = '/OnBoard';
  static const String oTP = '/OTP';
  static const String signUp = '/Signup';
  static const String home = '/Home';
  static const String profile = '/Profile';
  static const String contactUs = '/ContactUs';
  static const String itemList = '/Itemlist';
  static const String storeList = '/StoreList';
  static const String storetut = '/StoreTut';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return PageViewTransition(
            builder: (_) => SplashScreen(goToPage: '/OnBoard'));
      case oTP:
        return PageViewTransition(builder: (_) => OTP());
      case signUp:
        return PageViewTransition(builder: (_) => SignUP());
      case home:
        return PageViewTransition(builder: (_) => HomeScreen());
      case profile:
        return PageViewTransition(builder: (_) =>  Profile());
      case contactUs:
        return PageViewTransition(builder: (_) =>  ContactUs());
      case itemList:
        return PageViewTransition(builder: (_)=> ItemNav());
      case storeList:
        return PageViewTransition(builder: (_)=>StoreList());
      case storetut:
        return PageViewTransition(builder: (_)=>StoreTut());
      default:
        return PageViewTransition(builder: (_) =>  OnBoard());
    }
  }
}
