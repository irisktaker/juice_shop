import 'package:flutter/material.dart';

import 'ice_mix_screen.dart';
import 'mix_screen.dart';
import 'pastry_screen.dart';
import 'products_list_screen.dart';

class HomeTabsScreensBar extends StatefulWidget {
  const HomeTabsScreensBar({Key? key}) : super(key: key);

  @override
  _HomeTabsScreensBarState createState() => _HomeTabsScreensBarState();
}

class _HomeTabsScreensBarState extends State<HomeTabsScreensBar> {
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
        'page': const ProductsListScreen(),
        'title': 'smoothies',
      },
      {
        'page': const PastryScreen(),
        'title': 'pastry',
      },
      {
        'page': const IceMixScreen(),
        'title': 'icemix',
      },
      {
        'page': const MixScreen(),
        'title': 'mix',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              textBaseline: TextBaseline.alphabetic,
              children: [
                topTabTitles(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _pages[_selectedPageIndex]['page'],
        ],
      ),
    );
  }

  Widget topTabTitles() {
    return SizedBox(
      height: 33,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              InkWell(
                onTap: () => setState(() {
                  _selectedPage(index);
                }),
                child: Column(
                  children: [
                    Text(
                      _pages[index]['title'],
                      style: TextStyle(
                        color: index == _selectedPageIndex
                            ? const Color(0xFF676767)
                            : Colors.grey,
                        fontFamily: 'cocogoose',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 2),
                    index == _selectedPageIndex ? Container(
                      alignment: Alignment.topLeft,
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFFEF7CBE),
                        radius: 3.5,
                      ),
                    ) : Container(),
                  ],
                ),
              ),
              const SizedBox(width: 75),
            ],
          );
        },
      ),
    );
  }
}
