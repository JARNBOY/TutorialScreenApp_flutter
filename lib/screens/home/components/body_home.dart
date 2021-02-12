import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/screens/home/components/search_field.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

import 'discount_banner.dart';
import 'home_header.dart';
import 'icon_btn_show_badge.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
          ],
        ),
      ),
    );
  }
}
