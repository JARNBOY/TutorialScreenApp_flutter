import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/models/Cart.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

import 'cart_item_card.dart';

class BodyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartItemCard(
          cart: demoCarts[0],
        ),
      ],
    );
  }
}
