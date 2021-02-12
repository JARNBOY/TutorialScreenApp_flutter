import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

import 'complete_profile_form.dart';

class BodyCompleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text("Complete Profile", style: headingStyle),
            Text(
              "Complete your detail or continue \nwith social word",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              "By continue your confirm that you agree \nwith our Term and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
