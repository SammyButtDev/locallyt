import 'package:flutter/material.dart';
import 'package:locallyt/Screens/itemlist.dart';
import 'package:locallyt/const.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ItemNav extends StatefulWidget {
   ItemNav({Key? key}) : super(key: key);

  @override
  State<ItemNav> createState() => _ItemNavState();
}

class _ItemNavState extends State<ItemNav> {
  var _currentIndex = 0;
  final locallyScreens = [
    ItemList(),
    Container(
      child: Center(child: Text("Order Flow")),
    ),
    Container(
      child: Center(child: Text("Deals Nearyby")),
    ),
    //const ExerciseLib(),
    //const CalenderScreen(),
    //AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(
            icon: Image(image: AssetImage("assets/custIcons/doc.png")),
            title: Text("Home"),
            selectedColor: btnColor,
          ),
          SalomonBottomBarItem(
            icon: Image(image: AssetImage("assets/custIcons/cart.png")),
            title: Text("Order Flow"),
            selectedColor: btnColor,
          ),
          SalomonBottomBarItem(
            icon: Image(image: AssetImage("assets/custIcons/deal.png")),
            title: Text("Deals Nearby"),
            selectedColor: btnColor,
          ),
        ],
        onTap: (i) => setState(() => _currentIndex = i),
      ),
      body: locallyScreens[_currentIndex],
    );
  }
}
