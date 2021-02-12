import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: SizeConfig.screenWidth * 0.6,
                    decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50)),
                    child: TextField(
                      onChanged: (value) {
                        //search value
                      },
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search Product",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(20),
                              vertical: getProportionateScreenHeight(10))),
                    ),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(12)),
                        height: getProportionateScreenWidth(46),
                        width: getProportionateScreenWidth(46),
                        decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: SvgPicture.asset("assets/icons/Bell.svg"),
                      ),
                      Positioned(
                        right: 0,
                        top: -3,
                        child: Container(
                            height: getProportionateScreenWidth(16),
                            width: getProportionateScreenWidth(16),
                            decoration: BoxDecoration(
                                color: Color(0xFFFF4848),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1.5, color: Colors.white))),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
