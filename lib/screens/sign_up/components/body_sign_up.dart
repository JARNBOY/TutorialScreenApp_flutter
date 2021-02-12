import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/components/custom_suffix_icons.dart';
import 'package:tutorialscreenapp_flutter/components/default_button.dart';
import 'package:tutorialscreenapp_flutter/components/form_error.dart';
import 'package:tutorialscreenapp_flutter/components/social_card.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/screens/sign_up/components/sign_up_form.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class BodySignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              "Register Account",
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
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
            Text(
              "By Continue your confirm that you agree \nwith our Team and Conditoin",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
