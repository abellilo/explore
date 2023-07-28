import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String imagePath;
  Cards({Key? key,required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: ClipRRect(
        child: Image.asset(imagePath,
        fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
