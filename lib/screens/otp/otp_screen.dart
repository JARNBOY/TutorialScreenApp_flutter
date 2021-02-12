import 'package:flutter/material.dart';

import 'components/body_otp.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BodyOTP(),
    );
  }
}
