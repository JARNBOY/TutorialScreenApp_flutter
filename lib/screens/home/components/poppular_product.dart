import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/models/Product.dart';
import 'package:tutorialscreenapp_flutter/screens/home/components/product_card.dart';
import 'package:tutorialscreenapp_flutter/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PoppularProduct extends StatelessWidget {
  const PoppularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                        product: demoProducts[index],
                      )),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
