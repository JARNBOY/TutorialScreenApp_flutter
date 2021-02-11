import 'package:flutter/material.dart';

import 'components/body_login_success.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyLoginSuccess());
  }
}
