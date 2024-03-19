import 'package:coffeeshop/flutterswitch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class switchlist extends StatelessWidget {
  final String text;
  switchlist({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        switches(),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
