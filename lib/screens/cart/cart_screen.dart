import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/models/Cart.dart';

import 'components/body_cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Your Cart",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${demoCarts.length} times",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
      body: BodyCart(),
    );
  }
}
