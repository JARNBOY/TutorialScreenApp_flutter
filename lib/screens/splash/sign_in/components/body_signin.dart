import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/sign_in/components/sign_form.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class BodySignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Sign in eith your email and password \nor continue with social media",
              textAlign: TextAlign.center,
            ),
            SignForm(),
            SocialCard(
              svgSocial: "assets/icons/facebook-2.svg",
            )
          ],
        ),
      ),
    ));
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.svgSocial,
    this.press,
  }) : super(key: key);
  final String svgSocial;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration:
          BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
      child: SvgPicture.asset(svgSocial),
    );
  }
}
