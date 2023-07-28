import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onSearchTap;
  Color color;

  MyAppBar({
    Key? key,
    required this.onSearchTap,
    required this.title,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title,
              style: GoogleFonts.brawler(
                fontSize: 40,
                color: color
              ),),
          ),
          GestureDetector(
            onTap: onSearchTap,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200]
              ),
              child: Icon(Icons.search,
                size: 36,
                color: Colors.grey[800],
              ),
            ),
          )
        ],
      ),
    );
  }
}

