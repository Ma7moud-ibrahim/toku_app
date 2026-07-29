import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  const Category({super.key, this.color, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.centerLeft,
        color: color,
        width: double.infinity,
        height: 50,
        child: Text('$text', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
