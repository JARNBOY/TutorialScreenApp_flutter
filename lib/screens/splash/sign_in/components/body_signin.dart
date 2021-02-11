import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/size_config.dart';

class BodySignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
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
          )
        ],
      ),
    ));
  }
}
