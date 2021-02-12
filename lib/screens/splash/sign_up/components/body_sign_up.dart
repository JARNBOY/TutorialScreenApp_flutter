import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/components/custom_suffix_icons.dart';
import 'package:tutorialscreenapp_flutter/components/default_button.dart';
import 'package:tutorialscreenapp_flutter/components/form_error.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/sign_up/components/sign_up_form.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class BodySignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Register Account",
            style: headingStyle,
          ),
          Text(
            "Complete your details or continue \nwith social media",
            textAlign: TextAlign.center,
          ),
          SignUpForm()
        ],
      ),
    );
  }
}
