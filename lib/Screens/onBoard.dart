import 'package:flutter/material.dart';
import '../Components/dot_indicator.dart';

class OnBoard extends StatefulWidget {
   OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> with SingleTickerProviderStateMixin {
  late PageController controller;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                  children: [
                    OnBoardCust(
                        image: 'assets/images/Shopping.png',
                        detail:
                            "here are many variations of passages of Lorem Ipsumavailable, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                        title: "Easy Shopping"),
                    OnBoardCust(
                        image: 'assets/images/Secure_payment1.png',
                        detail:
                            "here are many variations of passages of Lorem Ipsumavailable, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                        title: "Secure Payment"),
                    OnBoardCust(
                        image: 'assets/images/QuickDev.png',
                        detail:
                            "here are many variations of passages of Lorem Ipsumavailable, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                        title: "Quick Delivery"),
                  ],
                  controller: controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: IndicatorBar(
                  currentIndex: currentIndex,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardCust extends StatelessWidget {
  final String image;
  final String title;
  final String detail;
  OnBoardCust(
      {Key? key,
      required this.image,
      required this.detail,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.2,
          ),
          Image(
            image: AssetImage(
              image,
            ),filterQuality: FilterQuality.high,
          ),
          SizedBox(
            height: size.height * 0.07,
          ),
          Text(
            title,
            style:  TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              detail,
              textAlign: TextAlign.center,
              style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
