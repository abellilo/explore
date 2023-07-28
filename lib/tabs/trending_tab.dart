import 'package:flutter/material.dart';

import '../components/card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cards(imagePath: "lib/images/explore_1.jpg",);
  }
}
