import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/models/Cart.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

import 'cart_item_card.dart';

class BodyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Dismissible(
        key: Key(demoCarts[0].product.id.toString()),
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Color(0xFFFFE6E6),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [Spacer(), SvgPicture.asset("assets/icons/Trash.svg")],
          ),
        ),
        child: CartItemCard(
          cart: demoCarts[0],
        ),
      ),
    );
  }
}
