import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/components/social_card.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
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
            SizedBox(height: SizeConfig.screenHeight * 0.04),
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
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            SignForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  svgSocial: "assets/icons/facebook-2.svg",
                  press: () {
                    print("facebook click");
                  },
                ),
                SocialCard(
                  svgSocial: "assets/icons/twitter.svg",
                  press: () {
                    print("twitter click");
                  },
                ),
                SocialCard(
                  svgSocial: "assets/icons/google-icon.svg",
                  press: () {
                    print("google click");
                  },
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: kPrimaryColor),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
