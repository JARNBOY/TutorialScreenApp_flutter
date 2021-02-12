import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/home/components/search_field.dart';

import '../../../size_config.dart';
import 'icon_btn_show_badge.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconsBtnShowBadge(
            svgImg: "assets/icons/Cart Icon.svg",
            press: () {},
          ),
          IconsBtnShowBadge(
            svgImg: "assets/icons/Bell.svg",
            numberBadge: 3,
            press: () {},
          )
        ],
      ),
    );
  }
}
