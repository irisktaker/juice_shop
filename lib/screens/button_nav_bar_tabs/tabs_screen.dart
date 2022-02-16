// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import '/screens/button_nav_bar_tabs/profile/profile_screen.dart';

import '../../widgets/custom_app_bar.dart';
import 'cart/cart_screen.dart';

class TabsScreen extends StatefulWidget {
  static const route = 'TabsScreen';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  late List<Map<String, dynamic>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'page': const HomeScreen(),
        'title': 'Jusber',
      },
      {
        'page': const CartScreen(),
        'title': 'Cart',
      },
      {
        'page': const ProfileScreen(),
        'title': 'Profile',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: _pages[_selectedPageIndex]['title']),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        currentIndex: _selectedPageIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 26,
        selectedItemColor: const Color(0xFFA7BBDB),
        unselectedItemColor: const Color(0xFFD3D8E0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
