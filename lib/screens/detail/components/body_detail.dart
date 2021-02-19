import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorialscreenapp_flutter/components/default_button.dart';
import 'package:tutorialscreenapp_flutter/components/round_btn.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/models/Product.dart';
import 'package:tutorialscreenapp_flutter/screens/detail/components/product_description.dart';
import 'package:tutorialscreenapp_flutter/screens/detail/components/product_image.dart';
import 'package:tutorialscreenapp_flutter/screens/detail/components/row_color_dots.dart';
import 'package:tutorialscreenapp_flutter/screens/detail/components/top_round_container.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class BodyDetail extends StatelessWidget {
  final Product product;
  const BodyDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    resetSelect();
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDesciption(
                  product: product,
                  pressSeeMore: () {},
                ),
                TopRoundContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      RowColorDots(product: product),
                      TopRoundContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              top: getProportionateScreenWidth(15),
                              bottom: getProportionateScreenWidth(40)),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
