import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorialscreenapp_flutter/components/custom_bottom_bar.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/enums.dart';
import 'package:tutorialscreenapp_flutter/screens/home/home_screen.dart';

import 'components/body_profile.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: BodyProfile(),
      bottomNavigationBar: CustomBottomTabbar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
