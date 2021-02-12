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
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  String confirmPassword;
  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [],
      ),
    );
  }
}
