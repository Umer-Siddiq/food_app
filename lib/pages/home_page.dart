// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../custom_widgets/custom_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _arrFoodTitles = [
    "Pizza",
    'Burger',
    "Biryani",
    "Nihari",
    "samosas",
    "Pasta",
    "Broast"
  ];

  final List<String> _arrFoodImages = [
    'assets/images/pizza_pic.jpg',
    'assets/images/burger_pic.png',
    'assets/images/biryani_pic.jpg',
    'assets/images/nihari_pic.jpg',
    'assets/images/samosa_pic.jpg',
    'assets/images/pasta_pi.jpg',
    'assets/images/broast_pic.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.035),
                Column(
                  children: [
                    Text("Hello Ahmed",
                        style: TextStyle(
                            fontSize: 22, color: Colors.red.shade800)),
                    const Text("Search & Order",
                        style: TextStyle(fontSize: 20, color: Colors.black45))
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.34,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                      'assets/images/profile_pic.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.94,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/discount_bg_pic.webp",
                  ),
                  const Positioned(
                      left: 180,
                      child: Text(
                        "Up to 49% off",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  const Positioned(
                      left: 182,
                      top: 33,
                      child: Text(
                        "July 12 - August 10",
                        style: TextStyle(fontSize: 17.5, color: Colors.white),
                      )),
                  Positioned(
                      left: 210,
                      top: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange.shade500),
                        child: const Text(
                          "Order now",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            CustomTextField(
              textHint: 'Search Your favourite food',
              focusedBorderRadius:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
              enabledBorderRadius:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
