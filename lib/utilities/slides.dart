import 'package:flutter/material.dart';

class Slides extends StatelessWidget {
  const Slides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      children: [
        const SizedBox(width: 16.0),
        buildSlides(
          context: context,
          urlImage: 'assets/slideOne.png',
          title: 'African meals',
        ),
        const SizedBox(width: 8.0),
        buildSlides(
          context: context,
          urlImage: 'assets/slideTwo.png',
          title: 'Continental meals',
        ),
        const SizedBox(width: 8.0),
        buildSlides(
          context: context,
          urlImage: 'assets/slideThree.png',
          title: 'Pastries',
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

  Widget buildSlides({
    required BuildContext context,
    required String urlImage,
    required title,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        width: 134.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Color(0xFFFF7700),
          boxShadow: [
            BoxShadow(
              color: Color(0x3DBB895A),
              blurRadius: 4.0,
              offset: Offset(0.0, 4.0),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              urlImage,
              height: 45.0,
              width: 45.0,
            ),
            const SizedBox(width: 4.0),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
}
