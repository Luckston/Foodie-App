import 'package:flutter/material.dart';
import '../views/homepage.dart';
import '/views/onboarding.dart';

const String onBoarding = 'onboarding';
const String homePage = 'homepage';

void login() {}

Route<dynamic> controller(RouteSettings settings) {
  switch(settings.name) {
    case onBoarding:
      return MaterialPageRoute(builder: (context) => OnBoarding());
      case homePage:
      return MaterialPageRoute(builder: (context) => HomePage());
    default:
      throw ('this route name does not exist');
  }
}