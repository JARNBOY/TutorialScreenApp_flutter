import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/sign_in/components/body_signin.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: BodySignIn(),
    );
  }
}
