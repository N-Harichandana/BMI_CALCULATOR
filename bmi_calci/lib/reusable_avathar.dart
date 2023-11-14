import 'package:flutter/material.dart';

class reusable_avatar extends StatelessWidget {
  final Color colour;
  final IconData icon;
  final VoidCallback onpress;

  reusable_avatar(
      {required this.colour, required this.icon, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: colour,
        child: Icon(
          icon,
          size: 60.0,
        ),
      ),
    );
  }
}
