import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorialscreenapp_flutter/components/round_btn.dart';
import 'package:tutorialscreenapp_flutter/models/Product.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

import 'components/body_detail.dart';
import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: BodyDetail(product: arguments.product),
    );
  }
}

//But we also need to pass pur product to our detail screen
//And we use name route so we need create a arguments class

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({@required this.product});
}
