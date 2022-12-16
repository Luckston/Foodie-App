import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_app/utilities/slides.dart';
import '../utilities/tiles.dart';
import '../utilities/tilesTwo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.dark, // For iOS (dark icons)
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 47.0, 16.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/foodieMenu.png',
                        height: 14.0,
                        width: 21.0,
                      ),
                      const SizedBox(width: 24.0),
                      const Text(
                        'Hi Peace 👋',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Icon(
                        Icons.notifications_none,
                        size: 28.0,
                      ),
                      const SizedBox(width: 8.0),
                      Image.asset(
                        'assets/foodieAvatar.png',
                        height: 32.0,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  const Text(
                    'What would you like to eat today?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Container(
                    height: 36.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color(0xFFF6F6F6),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search for a meal',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Color(0x99141313),
                        ),
                        prefixIcon: ClipRect(
                          child: Image.asset(
                            'assets/foodieSearch.png',
                            scale: 2.0,
                          ),
                        ),
                        suffixIcon: ClipRect(
                          child: Image.asset(
                            'assets/searchSettings.png',
                            scale: 2.0,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Explore Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'See more',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                  color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Image.asset(
                              'assets/foodieArrow.png',
                              height: 12.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
              child: Slides(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Most Popular',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Tiles(),
                  SizedBox(height: 32.0),
                  Text(
                    'Order Again',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TilesTwo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
