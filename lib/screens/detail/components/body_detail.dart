import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/models/Product.dart';
import 'package:tutorialscreenapp_flutter/screens/detail/components/product_image.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class BodyDetail extends StatelessWidget {
  final Product product;
  const BodyDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductImage(product: product);
  }
}
