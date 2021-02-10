import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/splash_screen.dart';

//We use  name route
//All our route will be avialable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
};
