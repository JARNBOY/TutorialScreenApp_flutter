import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/cart/cart_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/detail/detail_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/forgot_password/forgot_password_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/home/home_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/login_success/login_success.dart';
import 'package:tutorialscreenapp_flutter/screens/otp/otp_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/sign_in/sign_in_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/sign_up/sign_up_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/splash_screen.dart';
import 'screens/complete_profile/complete_profile.dart';

//We use  name route
//All our route will be avialable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
