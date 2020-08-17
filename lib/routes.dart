import 'package:flutter/material.dart';
import 'package:token_system/ui/home/HomeScreen.dart';
import 'package:token_system/ui/splash/SplashScreen.dart';


class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}



