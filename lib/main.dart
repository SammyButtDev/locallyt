import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locallyt/app_Router.dart';
import 'package:locallyt/const.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(500, 750),
      builder: (c) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!);
        },
        title: 'LocallyT',
        initialRoute: AppRoute.splashScreen,
        navigatorKey: Utils.mainAppNav,
        onGenerateRoute: AppRoute.generateRoute,
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: colorSeed),
          colorSchemeSeed: colorSeed,
        ),
      ),
    );
  }
}
