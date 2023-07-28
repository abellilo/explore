import 'package:flutter/material.dart';
import 'package:explore/components/card.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cards(imagePath: "lib/images/explore_3.jpg");
  }
}
