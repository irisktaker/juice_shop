import 'package:flutter/material.dart';

import '/screens/login/login.dart';
import '../../widgets/buttons/custom_text_button.dart';

class SplashScreen extends StatefulWidget {
  static const route = 'SplashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _selectedPageIndex = 0;

  late List<Map<String, dynamic>> toggleSplashScreens;

  @override
  void initState() {
    toggleSplashScreens = [
      {
        'image': 'assets/images/Group 2179.png',
        'txt': 'It’s available in your favorite cities now'
            '\nand thy wait! go and order'
            '\nfour favorite juices',
        'btnColor': const Color(0xFFF4AAD0),
      },
      {
        'image': 'assets/images/Group 2180.png',
        'txt': 'Juice is a beverage made from the'
            '\nextraction or pressing out of natural liquid'
            '\ncontained good quality fruits',
        'btnColor': const Color(0xFFFFB13B),
      },
      {
        'image': 'assets/images/Group 2183.png',
        'txt': 'User can look for their favorite juices'
            '\nand buy it through the online gateway'
            '\nprocess or through cash on delivery',
        'btnColor': const Color(0xFF99B0FB),
      },
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 9),
            Image.asset(
              toggleSplashScreens[_selectedPageIndex]['image'],
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            const Spacer(flex: 2),
            Text(
              toggleSplashScreens[_selectedPageIndex]['txt'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFFA5A5A5),
                fontFamily: 'Roboto',
              ),
            ),
            const Spacer(flex: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sliderButton(
                  index: 0,
                  color: _selectedPageIndex == 0
                      ? toggleSplashScreens[_selectedPageIndex]['btnColor']
                      : const Color(0xFF939393),
                ),
                const SizedBox(width: 16.5),
                 sliderButton(
                  index: 1,
                  color: _selectedPageIndex == 1
                      ? toggleSplashScreens[_selectedPageIndex]['btnColor']
                      : const Color(0xFF939393),
                ),
                const SizedBox(width: 16.5),
                 sliderButton(
                  index: 2,
                  color: _selectedPageIndex == 2
                      ? toggleSplashScreens[_selectedPageIndex]['btnColor']
                      : const Color(0xFF939393),
                ),
              ],
            ),
            const Spacer(flex: 2),
            CustomTextButton(
              text: 'skip'.toUpperCase(),
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  LoginScreen.route,
                );
              },
              color: const Color(0xFF939393),
              fontSize: 18,
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  InkWell sliderButton({
    required int index,
    required Color color,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedPageIndex = index;
        });
      },
      child: Container(
        width: 49,
        height: 8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
