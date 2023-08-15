import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/route.dart';

class Tiles extends StatelessWidget {
  const Tiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, foodView),
              child: buildContainer(
                context: context,
                urlImage: 'assets/popularOne.png',
                title: 'Jellof Rice and Chicken',
                price: '₦800',
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: buildContainer(
              context: context,
              urlImage: 'assets/popularTwo.png',
              title: 'Croissant',
              price: '₦1200',
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer({
    required BuildContext context,
    required String urlImage,
    required title,
    required price,
  }) =>
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            // height: 180.0,
            constraints: const BoxConstraints(minHeight: 180.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Color(0xFFFCECDE),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    urlImage,
                    height: 102.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 16.0, 4.0, 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        price,
                        style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFB71C1C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 24.0,
              width: 24.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xFF921616),
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
            ),
          ),
        ],
      );
}
