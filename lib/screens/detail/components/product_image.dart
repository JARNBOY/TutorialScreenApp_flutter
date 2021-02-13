import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/models/Product.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImg = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImg]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => smallPreviewProduct(index))
          ],
        )
      ],
    );
  }

  GestureDetector smallPreviewProduct(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImg = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(16)),
        padding: EdgeInsets.all(getProportionateScreenWidth(6)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
                color:
                    selectedImg == index ? kPrimaryColor : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
