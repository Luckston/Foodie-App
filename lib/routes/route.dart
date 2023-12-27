import 'package:flutter/material.dart';
import '/views/foodView.dart';
import '../views/landingPage.dart';
import '/views/onboarding.dart';

const String onBoarding = 'onboarding';
const String landingPage = 'landingpage';
const String foodView = 'foodview';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoarding());
    case landingPage:
      return MaterialPageRoute(builder: (context) => const LandingPage());
    case foodView:
      return MaterialPageRoute(builder: (context) => const FoodView());
    default:
      throw ('this route name does not exist');
  }
}
