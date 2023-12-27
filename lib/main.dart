import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_app/views/landingPage.dart';
import 'package:google_fonts/google_fonts.dart';
import '/routes/route.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
      onGenerateRoute: route.controller,
      initialRoute: route.onBoarding,
    );
  }
}
