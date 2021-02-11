import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/sign_in/sign_in_screen.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/splash_screen.dart';

//We use  name route
//All our route will be avialable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
