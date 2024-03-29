import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_app/routes/route.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  static const SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
  );

  @override
  void initState() {
    super.initState();
    // super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(overlayStyle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/foodieOnboard.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              // Status bar brightness (optional)
              statusBarIconBrightness:
                  Brightness.light, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: const Color(0xFF484848),
            elevation: 0,
          ),
        ),
        body: Column(
          children: [
            const Expanded(
              flex: 4,
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Foodie',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 44.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const Text(
                          'We deliver tasty meals to your doorstep',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 44.0,
                      width: 235.0,
                      child: TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, landingPage),
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFFF7700),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
