import 'package:flutter/material.dart';
import 'package:tutorialscreenapp_flutter/routes.dart';
import 'package:tutorialscreenapp_flutter/screens/splash/splash_screen.dart';
import 'package:tutorialscreenapp_flutter/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tutorial Screen App',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
