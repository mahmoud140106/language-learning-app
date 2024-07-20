import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  // const Category({super.key});
  const Category({super.key, this.text, this.color, this.onTap});
  final String? text;
  final Color? color;
  // Function()? onTap;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        // color: Color(0xFFEF9235),
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
