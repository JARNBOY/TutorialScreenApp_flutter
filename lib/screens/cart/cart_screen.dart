import 'package:flutter/material.dart';

import 'components/body_cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BodyCart(),
    );
  }
}
