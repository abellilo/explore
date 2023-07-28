import 'package:flutter/material.dart';

import '../components/my_appbar.dart';
import '../util/glass_box.dart';
import '../components/my_bottombar.dart';
import '../components/my_tabbar.dart';
import '../tabs/recent_tabs.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  // user tapped searched button
  void searchButtonTapped() {}

  // tab options
  List tabOption = [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabOption.length,
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: GlassBox(
            child: MyBottomBar(
              index: _currentBottonIndex,
              onTap: _handleIndexChanged,
            ),
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 700,
                child: MyTabBar(
                  tabOptions: tabOption,
                ),
              ),

            ],
          ),
        )
    );
  }
}
