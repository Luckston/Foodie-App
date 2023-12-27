import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/utilities/slides.dart';
import '/utilities/tiles.dart';
import '/utilities/tilesTwo.dart';
import 'homePage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;

  final screens = [
    HomePage(),
    // EventPage(),
    // SearchPage(),
    // SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.dark, // For iOS (dark icons)
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFB0ACAC),
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFFFF7700),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/homeLogo.png'),
                size: 20.0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/cartLogo.png'),
                size: 20.0,
              ),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
