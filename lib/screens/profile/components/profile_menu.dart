import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.textMenu,
    @required this.svgImg,
    @required this.press,
  }) : super(key: key);

  final String textMenu, svgImg;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              svgImg,
              width: 20,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                textMenu,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
