import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodView extends StatelessWidget {
  const FoodView({Key? key}) : super(key: key);

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
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 88.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 42.0, 16.0, 26.81),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Icon(Icons.favorite_border, color: Color(0x8C000000))],
                ),
              ),
              Image.asset('assets/jellof.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 58.0, 16.0, 45.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Jellof Rice and Chicken',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          height: 27.0,
                          width: 87.0,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3D241818),
                                blurRadius: 4.0,
                                offset: Offset(0.0, 2.0),
                              ),
                            ],
                            color: Color(0xFF921616),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/subtract.png',
                                  height: 16.0,
                                  width: 16.0,
                                ),
                                Text(
                                  '1',
                                  style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/addition.png',
                                  height: 16.0,
                                  width: 16.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Image.asset(
                          'assets/starIcon.png',
                          height: 14.0,
                          width: 14.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '4.8',
                          style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(width: 13.0),
                        Image.asset(
                          'assets/locationIcon.png',
                          height: 14.0,
                          width: 14.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '6 km',
                          style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(width: 13.0),
                        Image.asset(
                          'assets/dishIcon.png',
                          height: 14.0,
                          width: 14.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '5-7 mins',
                          style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    RichText(
                      text: const TextSpan(
                        text:
                            'Our sumptuous jellof rice made with variety of spices topped with crispy chicken and served with salad or vegetables (highly optional) on the side. It an easy and convenient meal option that will satisfy your taste buds and.. ',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Read more',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w800,
                              height: 1.5,
                              color: Color(0xFFFF7700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        height: 88.0,
        decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xFF803C00),
              ),
            ),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '₦800',
              style: GoogleFonts.lexend(
                textStyle: const TextStyle(
                  color: Color(0xFFB71C1C),
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 44.19,
              width: 208.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Color(0xFF921616),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/cartLogo.png'),
                  size: 20.0,
                  color: Colors.white,
                ),
                label: const Text(
                  'Add to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
