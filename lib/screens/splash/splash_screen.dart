import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/components/body.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    //You have to call ot own your start screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
