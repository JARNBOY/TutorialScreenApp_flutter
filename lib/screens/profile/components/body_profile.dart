import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/screens/profile/components/profile_menu.dart';
import 'package:tutorialscreenapp_flutter/screens/profile/components/profile_pic.dart';

class BodyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          textMenu: "My Account",
          svgImg: "assets/icons/User Icon.svg",
          press: () {},
        ),
        ProfileMenu(
          textMenu: "Notification",
          svgImg: "assets/icons/Bell.svg",
          press: () {},
        ),
        ProfileMenu(
          textMenu: "Setting",
          svgImg: "assets/icons/Question mark.svg",
          press: () {},
        ),
        ProfileMenu(
          textMenu: "Help Center",
          svgImg: "assets/icons/User Icon.svg",
          press: () {},
        ),
        ProfileMenu(
          textMenu: "Log Out",
          svgImg: "assets/icons/Log out.svg",
          press: () {},
        )
      ],
    );
  }
}
