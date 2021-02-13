import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/components/custom_bottom_bar.dart';
import 'package:tutorialscreenapp_flutter/screens/home/components/body_home.dart';

import '../../enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(),
      bottomNavigationBar: CustomBottomTabbar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
