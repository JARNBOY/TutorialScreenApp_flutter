import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/sign_up/components/body_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: BodySignUpScreen(),
    );
  }
}
