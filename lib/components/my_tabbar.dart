import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:explore/components/my_appbar.dart';


class MyTabBar extends StatefulWidget {

  final List tabOptions; // [ "Recent", Widget ]

  MyTabBar({
    Key? key,
    required this.tabOptions,
  }) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin{

  TabController? _controller;
  int _currentindex = 0;
  // user tapped searched button
  void searchButtonTapped() {}

  Color showcolor(int index){
    Color color = Colors.red;
    if(index == 0){
      color = Colors.green.shade900;
    }else if(index == 1){
      color = Colors.yellow.shade700;
    }else if(index == 2){
      color = Colors.black;
    }
    return color;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: widget.tabOptions.length, vsync: this);

    _controller!.addListener(() {
      setState(() {
        _currentindex = _controller!.index;
      });
      print("Selected Index: " + _controller!.index.toString());
      print(_currentindex);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        MyAppBar(
          title: 'Explore Collections',
          onSearchTap: searchButtonTapped,
          color: showcolor(_currentindex),
        ),

        TabBar(
          controller: _controller,
          onTap: (index){

          },
          indicatorColor: Colors.green.shade900,
          labelColor: Colors.green.shade900,

          // splashFactory: NoSplash.splashFactory,
          // isScrollable: true,

          unselectedLabelStyle: GoogleFonts.brawler(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),

          unselectedLabelColor: Colors.grey,

          labelStyle: GoogleFonts.arizonia(
            fontSize: 20,
          ),


          tabs: [

            Tab(
              child: Text(
                widget.tabOptions[0][0],
              ),
            ),

            Tab(
              child: Text(
                widget.tabOptions[1][0],
              ),
            ),

            Tab(
              child: Text(
                widget.tabOptions[2][0],
              ),
            ),

          ],
        ),

        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              widget.tabOptions[0][1],
              widget.tabOptions[1][1],
              widget.tabOptions[2][1],
            ],
          ),
        )
      ],
    );
  }
}

