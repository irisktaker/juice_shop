import 'package:flutter/material.dart';
import '/screens/button_nav_bar_tabs/home/home_tabs_screens/home_tabs_screens_bar.dart';


class HomeScreen extends StatelessWidget {
  static const route = 'homeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeTabsScreensBar();
  }
}
