import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/components/custom_suffix_icons.dart';
import 'package:tutorialscreenapp_flutter/components/default_button.dart';
import 'package:tutorialscreenapp_flutter/components/form_error.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String surName;
  String phoneNumber;
  String address;

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
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            firstNameTextFormField(),
            SizedBox(height: 30),
            surNameTextFormField(),
            SizedBox(height: 30),
            phoneTextFormField(),
            SizedBox(height: 30),
            addressTextFormField(),
            FormErrors(errors: errors),
            SizedBox(height: 40),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState.validate()) {
                  //Go to OTP Screen
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField firstNameTextFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          removeError(error: kNamelNullError);
        }
        firstName = value;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNamelNullError)) {
          addError(error: kNamelNullError);
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "First Name",
          hintText: "Enter First Name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcons(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField surNameTextFormField() {
    return TextFormField(
      onSaved: (newValue) => surName = newValue,
      decoration: InputDecoration(
          labelText: "Surname",
          hintText: "Enter Surname",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcons(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField phoneTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          removeError(error: kPhoneNumberNullError);
        }
        firstName = value;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          addError(error: kPhoneNumberNullError);
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Phone Number",
          hintText: "Enter Phone Number",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcons(
            svgIcon: "assets/icons/Phone.svg",
          )),
    );
  }

  TextFormField addressTextFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      decoration: InputDecoration(
          labelText: "Address",
          hintText: "Enter Address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcons(
            svgIcon: "assets/icons/Location point.svg",
          )),
    );
  }
}
