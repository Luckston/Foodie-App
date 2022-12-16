import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TilesTwo extends StatelessWidget {
  const TilesTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: buildContainer(
              context: context,
              urlImage: 'assets/orderOne.png',
              title: 'Egusi Soup and Semovita',
              price: '₦1500',
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: buildContainer(
              context: context,
              urlImage: 'assets/orderTwo.png',
              title: 'Chinese Noodles',
              price: '₦3000',
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
