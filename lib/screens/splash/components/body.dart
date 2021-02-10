import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to E-Comemerce, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people conect with store \naround Thailand of Thai",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with th",
      "image": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  currentPage = value;
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: List.generate(
                  splashData.length,
                  (Index) => buildDot(index: Index),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildDot({int index}) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 5),
          height: 6,
          width: currentPage == index ? 20 : 6,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(3)),
        )
      ],
    );
  }
}
