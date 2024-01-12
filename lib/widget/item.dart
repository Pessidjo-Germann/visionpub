import 'package:flutter/material.dart';

final color_card = Colors.white;

Widget cardo(String asset, Color _color) {
  return Card(
    elevation: 0.5,
    color: _color,
    child: Image.asset(asset),
  );
}

Widget containerIcon(Color colors, IconData icon) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
    ),
    child: IconButton(
      onPressed: () {},
      icon: Icon(icon, color: colors),
    ),
  );
}

Widget itemCarousel(String img, String titre, String corps, String option1,
    String option2, double d) {
  return Stack(
    children: [
      Container(
        width: d,
        height: 750,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset(img),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                titre,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                corps,
                textScaleFactor: 1.3,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(Icons.vaccines_rounded),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    option1,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  const Icon(Icons.vaccines_rounded),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    option2,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 190,
                  height: 52,
                  color: Colors.blue,
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          "Voir Les Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.skip_next,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget itemPersonnel(String asset, String name, String title1, String title2) {
  return Stack(
    children: [
      Container(
        width: 600,
        height: 430,
        color: Color.fromARGB(179, 191, 195, 218),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 38.0, right: 38.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                asset,
                height: 200,
              ),
            ),
            SizedBox(height: 30),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              title1,
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title2,
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                containerIcon(Colors.white, Icons.facebook_rounded),
                containerIcon(Colors.white, Icons.facebook_rounded),
                containerIcon(Colors.white, Icons.facebook_rounded),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
