import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/components/round_btn.dart';
import 'package:tutorialscreenapp_flutter/models/Product.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

import 'components/body_detail.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: RoundIconsButton(
          iconData: Icons.arrow_back_ios,
          press: () => Navigator.pop(context),
        ),
      ),
      body: BodyDetail(),
    );
  }
}

//But we also need to pass pur product to our detail screen
//And we use name route so we need create a arguments class

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({@required this.product});
}
