import 'package:flutter/material.dart';
import '/views/foodView.dart';
import '/views/homePage.dart';
import '/views/onboarding.dart';

const String onBoarding = 'onboarding';
const String homePage = 'homepage';
const String foodView = 'foodview';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoarding());
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case foodView:
      return MaterialPageRoute(builder: (context) => const FoodView());
    default:
      throw ('this route name does not exist');
  }
}
