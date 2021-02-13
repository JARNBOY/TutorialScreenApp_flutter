import 'package:flutter/material.dart';

import 'components/body_detail.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetail(),
    );
  }
}
