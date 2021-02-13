import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundIconsButton extends StatelessWidget {
  const RoundIconsButton({
    Key key,
    @required this.iconData,
    @required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenHeight(40),
      child: FlatButton(
        padding: EdgeInsets.only(left: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        child: Icon(iconData),
        onPressed: press,
      ),
    );
  }
}
