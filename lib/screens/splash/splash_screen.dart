import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/components/body.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class SplassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //You have to call ot own your start screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
