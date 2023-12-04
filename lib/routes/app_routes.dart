import 'package:flutter/material.dart';
import 'package:pharmaconnect/presentation/frame2_login_screen/frame2_login_screen.dart';

class AppRoutes {
  static const String frame2LoginScreen = '/frame2_login_screen';

  static Map<String, WidgetBuilder> routes = {
    frame2LoginScreen: (context) => Frame2LoginScreen()
  };
}
