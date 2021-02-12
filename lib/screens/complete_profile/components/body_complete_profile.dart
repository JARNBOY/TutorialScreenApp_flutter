import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/constant.dart';

class BodyCompleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Complete Profile", style: headingStyle),
        Text(
          "Complete your detail or continue \nwith social word",
          textAlign: TextAlign.center,
        ),
        CompleteProfileForm()
      ],
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
