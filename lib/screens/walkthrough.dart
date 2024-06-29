import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  int currentIndex = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  List info = [
    {
      'asset': 'assets/images/image_1.png',
      'title': 'Real Estate',
    },
    {
      'asset': 'assets/images/image_2.png',
      'title': 'Buy & Sell',
    },
    {
      'asset': 'assets/images/image_3.png',
      'title': 'List Apartment',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final indicators = List.generate(
      3,
      (index) => GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index ? Colors.black : Colors.white,
            border: Border.all(color: Colors.black),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: indicators,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                if (currentIndex == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Login();
                      },
                    ),
                  );
                }
                else{
                  setState(() {
                    currentIndex++;
                  });
                }
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(119, 128, 135, 1),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.asset(
                info[currentIndex]['asset'],
              ),
            ),
            Text(
              info[currentIndex]['title'],
              style: const TextStyle(
                color: Color.fromRGBO(23, 31, 36, 1),
                fontSize: 34,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts.',
              style: TextStyle(
                color: Color.fromRGBO(119, 128, 135, 1),
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Login();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
