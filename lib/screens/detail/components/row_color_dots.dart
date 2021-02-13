import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/components/round_btn.dart';
import 'package:tutorialscreenapp_flutter/models/Product.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class RowColorDots extends StatelessWidget {
  const RowColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //demo is fixed index select color
    int selectColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectColor == index,
              pressColor: () {},
            ),
          ),
          Spacer(),
          RoundIconsButton(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundIconsButton(
            iconData: Icons.add,
            press: () {},
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
    this.pressColor,
  }) : super(key: key);

  final Color color;
  final bool isSelected;
  final GestureTapCallback pressColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressColor,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: isSelected ? kPrimaryColor : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
